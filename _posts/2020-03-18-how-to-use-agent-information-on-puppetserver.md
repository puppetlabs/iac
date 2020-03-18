---
layout: post
title: "How to use agent-side information on the puppetserver"
author: dev_el_ops
categories:
  - module
  - development
tags:
  - modules
  - puppetserver
  - custom facts
  - custom resources
  - deferred
---

This question was posted on the [Puppet Community Slack](https://slack.puppet.com/) yesterday:

> Is there any way like the below in puppet code we can use:
> ```
> $var=‘run command locally on agent, if $?=0 echo “present”, else echo “absent”’
> if $var == present {
>   # my code
> } else {
>   # something else
> }
> ```
(by user [IlovPuppet](https://app.slack.com/team/URGFPBS0N), edited for presentation)

There are a number of reasons why this question comes up.
First is likely that folks are not aware of the options available at all.
Then, sometimes, the common options (like custom facts) just don't cut it for security or performance reasons.
Last but not least, organisational and technical circumstances can make one option more appealing than others.

From my answer there, I wrote up a more detailed exposition here.
Based on the specifics of your situation,
there are several different options to solve this,
described in detail below:

* make the decision explicit
* a `Deferred` function call
* using `onlyif` or `unless` on an `exec` resource
* a custom fact
* a custom resource

## Explicit Decisions

**What is it?**

Puppet shines when we can make our configuration decisions explicit.
Make the dynamic decision a static configuration and ensure that whatever is producing the different states is also managed by puppet.
Having a hard look at what the command is trying to decide and whether this couldn't be enforced instead of queried can save complexity.

**Example**

A simple example from my past as a technical consultant is a client who wanted to base a configuration decision off whether or not a particular package was installed on a workstation. In this particular case it turned out that installing that additional package was not very expensive (compared to coding up a dynamic solution), so we just rolled out the package to everyone and removed another thing that was different across the fleet.

**Use it ...**

* if you can take control of the source of your question.
* if you can key off another configuration instead of querying active system state.
* if you can make your general configuration easier by removing a source of variation.
* if the query code is difficult and/or unreliable.

**Don't use it if ...**

* the input is truly dynamic.
* the configuration is outside of your organisational scope (but try talking to the other team first!).
* the computed value is sensitive and should not be transmitted or stored outside the node.

## `Deferred`

**What is it?**

The `Deferred` function computes a value on the agent everytime the catalog is executed and uses the value immediately in the catalog.

**Example**

The [puppet/vault_lookup](https://forge.puppet.com/puppet/vault_lookup) module shows how to use `Deferred` with its `vault_lookup::lookup` function:

```puppet
$d = Deferred('vault_lookup::lookup', ["secret/test", 'https://vault.hostname:8200'])

node default {
  notify { example :
    message => $d
  }
}
```
(from [voxpupuli/puppet-vault_lookup](https://github.com/voxpupuli/puppet-vault_lookup#usage))

**Use it ...**

* for values specific to one or a few agents, for which managing via Hiera would be cumbersome.
* for sensitive values that should not be exposed outside the individual agent.
* for setting properties on resources.

**Don't use it if ...**

* you need to change **which** resources are managed.
* you need the value in PE Console for classification or reporting.
* the computed value depends on resources managed earlier in the catalog.
* a simpler solution (see above) works.

**Further Reading**

* [Write a Puppet function to store secrets](https://puppet.com/docs/puppet/latest/write_a_puppet_function_to_store_secrets.html): the original use-case for `Deferred`
* [The Topic is Deferred](http://puppet-on-the-edge.blogspot.com/2018/10/the-topic-is-deferred.html): blogpost with hints and tricks how to use `Deferred`
* [Agent Side Functions in Puppet 6](https://binford2k.com/2019/11/12/deferred-functions/): technical deep-dive on how `Deferred` works
* [HashiCorp Vault 🧡 Puppet6 webinar](https://www.hashicorp.com/resources/agent-side-lookups-with-hashicorp-vault-puppet-6): deferred functions in Puppet 6, which unlocks new authentication methods and workflows for HashiCorp Vault + Puppet setups.

## `exec` resources

**What is it?**

The `exec` resource has attributes to dynamically decide to run the managed command or not.
By passing a command to `onlyif` or `unless` the command is executed *only if* or *unless* the condition successfully executes.
Use `refreshonly` to react to another resource being changed.

**Example**

The [mysql module](https://forge.puppet.com/puppetlabs/mysql) has this `exec` resource to clean up after installation. This should never run after `${secret_file}` has been dealt with.
```puppet
exec { 'remove install pass':
  command => $rm_pass_cmd,
  onlyif  => "test -f ${secret_file}",
  path    => '/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin'
}
```
(from [root_password.pp](https://github.com/puppetlabs/puppetlabs-mysql/blob/312aca80ba7699ab37f9051d871aac2e05b217b3/manifests/server/root_password.pp#L20-L24))

**Use it for ...**

* running one-off commands on a condition.

**Don't use it if ...**

* an exec is not a good fit for your problem.
* the condition is very complex or timeconsuming.
* the condition has to be repeated often.

**Further Reading**

* [Resource Type: `exec`](https://puppet.com/docs/puppet/latest/types/exec.html)

## Custom Facts

**What is it?**

Custom facts are distributed to Puppet clients and are available for use in manifests and templates,
just like any other fact is.
They can be used to write conditional expressions based on site-specific data that isn’t available via Facter.

**Example**

The apt module has a few [custom facts](https://github.com/puppetlabs/puppetlabs-apt#facts). The `apt_update_last_success` fact is used in [update.pp](https://github.com/puppetlabs/puppetlabs-apt/blob/master/manifests/update.pp) to decide whether or not it is necessary to update apt caches depending on the various configurations specified.

**Use it ...**

* when you need to centrally collect and evaluate the values.
* when you want to get the value from all your nodes.
* to change the set of resources and classes included for each node.

**Don't use it if ...**

* the computed value is sensitive and should not be transmitted or stored outside the node.
* a simpler solution (see above) works.

**Further Reading**

* [Custom facts](https://puppet.com/docs/puppet/latest/fact_overview.html): the current puppet documentation
* [Custom facts walkthrough](https://puppet.com/docs/puppet/latest/custom_facts.html): how to write your own facts
* [Starting out with Puppet custom facts](https://glennsarti.github.io/blog/puppet-ruby-facts/): a quick start to converting external facts to ruby custom facts on Windows

## Custom Resources

**What is it?**

With a native ruby plugin you can fully take control of how puppet manages a resource. Through this you get fine-grained control over reporting and enforcing system state through puppet.

**Example**

The [mysql module](https://forge.puppet.com/puppetlabs/mysql) contains custom types and providers to control databases, users and grants.

> Note that the mysql module is still using the low-level API. Using the PDK and the Resource API, programming types and providers has become a lot easier as of late. Check out the "Further Reading" section below.

**Use it for ...**

* things that can be modeled as a puppet resource.
* fine-grained control.
* full integration into the puppet tooling.

**Don't use it if ...**

* you do not want to code ruby.
* a simpler solution (see above) works.

**Further Reading**

* [Custom Resources](https://puppet.com/docs/puppet/latest/custom_resources.html): main documentation on writing custom resources.
* [HUE hands on lab](https://github.com/puppetlabs/puppet-resource_api/tree/master/docs): hands-on lab for a custom remote resource interacting with a API.


## Final Words

To summarize, Puppet provides you with a number of alternatives to make your configuration smarter.
Thanks to IluvPuppet for the great question, and [Paul Anderson](https://github.com/hpcprofessional) and Paul Reed for reviewing and feedback.
