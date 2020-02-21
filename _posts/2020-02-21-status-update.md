---
layout: post
title: "21st Feb 2020: IAC Team Status Update"
author: dev_el_ops
categories:
  - team
  - status
tags:
  - module updates
  - community
  - approved
  - litmus
  - powershell
  - sqlserver
  - vsphere
  - modulebuilder
  - stdlib
---

The IAC team has been working on a lot of interesting things over the past week.
Here's a brief overview of what we've been up to:

## Updates to Puppet Modules

We've released only one module since last week:

- [puppetlabs/java](https://forge.puppet.com/puppetlabs/java) (v6.2.0)

## Community Contributions

Thanks to [@baurmatt](https://github.com/baurmatt) for his change to the concat module,
[adding support for Deferred function in concat fragment](https://github.com/puppetlabs/puppetlabs-concat/pull/627).

## Approved Modules

This week we happily approved two new modules:

- [fervid/secure_linux_cis](https://forge.puppet.com/fervid/secure_linux_cis) is a CIS hardening module for Linux servers by [fervid.us](https://www.fervid.us/).

- [stackstorm/st2](https://forge.puppet.com/stackstorm/st2) installs, configures and manages the eponymous [StackStorm](https://stackstorm.com) platform for event-driven runbook automation.

[Puppet Approved](https://forge.puppet.com/approved) modules are recommended by us for use with Puppet Open Source and Puppet Enterprise and meet our expectations for quality and usability.

## New puppet-modulebuilder Gem

Work [has started](https://tickets.puppetlabs.com/browse/IAC-532) on creating a [puppet-modulebuilder](https://github.com/puppetlabs/puppet-modulebuilder) gem.
This will carry the actual functionality for `pdk build` and allow third-party tools to re-use the same functionality without having to pull in the whole PDK.
We expect a first release early next week.
Follow [IAC-552](https://tickets.puppetlabs.com/browse/IAC-552) to get a notification when that happens.

Thanks a lot to [Glenn](https://github.com/glennsarti) for helping out with the actual porting of the code.

## Ongoing Litmus Conversions

This week saw a flurry of PRs (through [pdksync](https://github.com/puppetlabs/pdksync)) to [update all our modules](https://tickets.puppetlabs.com/browse/IAC-215) to use the new `use_litmus` support in [pdk-templates](https://github.com/puppetlabs/pdk-templates).
This reduces the amount of configuration we need to carry in each module and validates the pdk-templates feature.

As expected, the last remaining modules to convert to [Litmus](https://github.com/puppetlabs/puppet_litmus) were the ones we didn't want to touch earlier for good reasons.

- [powershell](https://github.com/puppetlabs/puppetlabs-powershell/pull/283) has been merged and is now running acceptance tests on Windows (appveyor), Linux and OS X (travis) in public.
- [sqlserver](https://github.com/puppetlabs/puppetlabs-sqlserver/pull/345) is still resisting,
  not the least because we found several areas where the previous test suite was ignoring warnings that we now want to address.
- [vsphere](https://github.com/puppetlabs/puppetlabs-vsphere/pull/172) is progressing.
  We don't expect to enable PR-level testing on this one,
  since it does require access to our internal VCenter.

If you're interested in porting a module to Litmus,
feel free to reach out to us during [Office Hours](https://puppet.com/community/office-hours/) - we'll be glad to help!

We're also looking into updating litmus to make use of [Bolt v2](https://github.com/puppetlabs/bolt/blob/master/CHANGELOG.md#bolt-200).
See [puppetlabs/puppet_litmus#254](https://github.com/puppetlabs/puppet_litmus/pull/254) if you want to follow along.

This week also saw a number of ruby [segfaults](https://travis-ci.org/puppetlabs/puppetlabs-mysql/jobs/653408974) and [deadlocks](https://travis-ci.org/puppetlabs/puppetlabs-mysql/jobs/652904009) during acceptance testing:

```text
448.03s$ bundle exec rake litmus:acceptance:parallel
Running against 3 targets.
./home/travis/build/puppetlabs/puppetlabs-mysql/vendor/bundle/ruby/2.5.0/gems/concurrent-ruby-1.1.6/lib/concurrent-ruby/concurrent/atomic/ruby_thread_local_var.rb:113: [BUG] Segmentation fault at 0x000000000b4d76d5
ruby 2.5.3p105 (2018-10-18 revision 65156) [x86_64-linux]
```

or

```text
$ bundle exec rake litmus:acceptance:parallel
Running against 2 targets.
.
No output has been received in the last 10m0s, this potentially indicates a stalled build or something wrong with the build itself.
Check the details on how to adjust your build configuration on: https://docs.travis-ci.com/user/common-build-problems/#build-times-out-because-no-output-was-received
The build has been terminated
```

We're still working on figuring out what changed recently to trigger these.

## Refactoring stdlib to Puppet4 function API

Off the back of Ben's [blog on the Puppet4 function API](https://binford2k.com/2019/11/27/automagic-function-port/),
work has started to move all functions in the [stdlib module](https://forge.puppet.com/puppetlabs/stdlib) to the "new" API.
To quote Ben:

> Each modern Puppet 4.x function is just a little faster and just a little safer
> to use, meaning that as we all port our functions over, compilation times across
> the ecosystem will get more and more performant. Modern Puppet 4.x functions
> have improved thread safety, memory management, and load time. Even more
> importantly, they’re isolated to the environment they’re loaded from.
>
> And as a developer, you'll see benefits like namespaced function signatures,
> automatic data type checking, multiple dispatches allowing you to easily handle
> different kinds of function invocations, and vastly improved code reuse.

If you want to follow along or provide feedback,
please avail yourself of [IAC-114](https://tickets.puppetlabs.com/browse/IAC-114).
