---
layout: post
title: "14th August 2020: IAC Team Status Update"
author: pmcmaw
categories:
  - team
  - status
tags:
  - releases
  - shoutouts
  - puppet7
  - apt
  - kubernetes
  - docker
  - language
  - mysql
  - registry
---

The IAC team has been working on a lot of things over the past week.
We want to share with our community some of the most interesting things.
Here’s a brief overview of what we’ve been up to:

## Module Releases from IAC Team
We have been busy this week with releasing the following modules:
- [puppetlabs/docker](https://forge.puppet.com/puppetlabs/docker) (v3.11.0)
- [puppetlabs/apt](https://forge.puppet.com/puppetlabs/apt) (v7.5.0)
- [puppetlabs/registry](https://forge.puppet.com/puppetlabs/registry) (v3.1.1)
- [puppetlabs/mysql](https://forge.puppet.com/puppetlabs/mysql) (v10.7.0)


## Community Contributions
A massive thanks to [scoopex][scoopex] for a number of enhancements and fixes to [puppetlabs-kubernetes][puppetlabs-kubernetes]. There are a lot of fixes and improvements incorporated in each of these PRs - for more details, take a look at the commits outlining each fix:
- [`puppetlabs-kubernetes#418`][kubernetes-pr-418] resolves issues [#365][kubernetes-issue-365] and [#415][kubernetes-issue-415]
- [`puppetlabs-kubernetes#420`][kubernetes-pr-420] resolves issues [#190][kubernetes-issue-190] and [#417][kubernetes-issue-417]

Thanks to [tphoney][tphoney] for [this enhancement][abs-enhancement] to the ABS provision module!

Shout out to Jason Stewart from our Customer Support team for liasing with [Adrian][adrian_iurca], [MODULES-10734](https://tickets.puppetlabs.com/browse/MODULES-10734) has now been resolved and released.

## Using Puppet with Private Cloudsmith Repositories
[Dan McKinney][dan-mckinney] from [Cloudsmith][cloudsmith] has uploaded a [cool video][cloudsmith-puppet-vid] which demonstrates how to use Puppet to deploy a package from a private [Cloudsmith][cloudsmith] repository.
It's great to see how Puppet can help automate ALL THE THINGS!
Great [video][cloudsmith-puppet-vid], [Dan][dan-mckinney]!

## Puppet 7
Puppet 7 testing is ongoing. [Ciaran][ciaran_mccrisken] is kicking Puppet 7 testing off when the nightly builds are published.


## Terminology changes
Last week in our blog we introduced this effort and the team is continuing to work on this. With the amount of modules and tools the team looks after this is quite a large piece of work that we are dedicated to completing in a timely matter. Currently [David Swan][david_swan] is continuing to work on this to get it over the line.

Here is an example of one of our modules that have been revamped with the new terminology:
- [accounts](https://github.com/puppetlabs/puppetlabs-accounts)


## Community Management Tool
Our very own [Daiana][Daiana] is working on our Community Management Tool and making it more mobile friendly. This means that soon everyone will be able to review our community reports from a mobile phone whilst on the go!


## Wrap-up
That concludes this weeks summary. As always we want to thank you all for your continuous support and understanding.

[ciaran_mccrisken]:       https://github.com/sanfrancisko
[Daiana]:                 https://github.com/daianamezdrea
[paula_muir]:             https://github.com/pmcmaw
[david_swan]:             https://github.com/davidswan22
[adrian_iurca]:           https://github.com/adrianiurca
[scoopex]:								https://github.com/scoopex
[puppetlabs-kubernetes]:	https://github.com/puppetlabs/puppetlabs-kubernetes
[kubernetes-pr-418]:			https://github.com/puppetlabs/puppetlabs-kubernetes/pull/418
[kubernetes-issue-365]:		https://github.com/puppetlabs/puppetlabs-kubernetes/issues/365
[kubernetes-issue-415]:		https://github.com/puppetlabs/puppetlabs-kubernetes/issues/415
[kubernetes-pr-420]:			https://github.com/puppetlabs/puppetlabs-kubernetes/pull/420
[kubernetes-issue-190]:		https://github.com/puppetlabs/puppetlabs-kubernetes/issues/190
[kubernetes-issue-417]:		https://github.com/puppetlabs/puppetlabs-kubernetes/issues/417
[tphoney]:								https://github.com/tphoney
[abs-enhancement]:				https://github.com/puppetlabs/provision/pull/126
[dan-mckinney]:           https://www.linkedin.com/in/dan-mckinney/
[cloudsmith-puppet-vid]:  https://www.youtube.com/watch?v=lCmS3omimEM
[cloudsmith]:             https://cloudsmith.com/
