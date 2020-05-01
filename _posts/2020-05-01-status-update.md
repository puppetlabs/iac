---
layout: post
title: "01st May 2020: IAC Team Status Update"
author: sheenaajay
categories:
  - team
  - status
tags:
  - module updates
  - community
  - litmus
  - testing
  - dsc
  - pdk
  - powershell
  - windows
  - modulebuilder
  - CampToCamp
  - voxpupuli
---

The IAC team has been working on a couple of interesting things in the past week.
Here's a brief overview of what we've been up to:

## Virtual Puppet Camp Germany

Puppet Camp Berlin has gone virtual.
We invite you to join us for an immersive and educational event without the risk of travel.

Join us online at [Virtual Puppet Camp Germany][Virtual Puppet Camp Germany] for technical talks from local leaders to level up your Puppet skill.

- Date And Time:<br/>
  Tue, May 5, 2020<br/>
  9:00 AM – 12:30 PM CEST

[Paula Muir][pmcmaw] will be one of the MCs for the Puppet Camp.

## Module Releases

One thing we are always happy to talk about is the release of a module, in this case:

- [puppetlabs/inifile](https://forge.puppet.com/puppetlabs/inifile) (v4.2.0)
- [puppetlabs/accounts](https://forge.puppet.com/puppetlabs/accounts) (v6.1.1)

## puppet-modulebuilder Gem 0.2.0 Release

[puppet-modulebuilder][puppet-modulebuilder] gem, which has now [been released](https://rubygems.org/gems/puppet-modulebuilder/versions/0.2.0)!

Thanks a lot to [ekohl][ekohl] for the improvement on puppet-modulebuilder!

## Continued Work on Puppet DSC

The [Puppet DSC project][iac-41] continues on through phase II, with this week seeing the ability to puppetize a PowerShell module's DSC resources with a single command (`New-PuppetDscModule`), as well as improving the output modules themselves, ensuring that their reference documentation and README are generated.
The other big change in the last week was to the underlying provider and type generation, improving debuggability and fully mapping embedded CIM instances!

To any community members who would like to be part of our beta testing program, I encourage you to reach out to [dsc@puppet.com](mailto:dsc@puppet.com) with answers to the following questions:

- What are the top three PowerShell modules with DSC resources you use/depend on the most?

## Community Contributions

When we talk of community it's not just the issues that they have raised, but also the contributions that they have made, so here's a few of the excellent PRs opened by community members that have been merged in over the last week:

* [Fix custom port in extension](https://github.com/puppetlabs/puppetlabs-postgresql/pull/1165)
* [Extend Log Options](https://github.com/puppetlabs/puppetlabs-firewall/pull/914)
* [MODULES-10550 fix keyspec parsing to allow whitespaces](https://github.com/puppetlabs/puppetlabs-accounts/pull/291)
* [Add set_noop parameter](https://github.com/puppetlabs/puppetlabs-bootstrap/pull/139)
* [Revert "Puppet 4 functions"](https://github.com/puppetlabs/puppetlabs-mysql/pull/1298)
* [Remove legacy (old API) "mysql_password" function](https://github.com/puppetlabs/puppetlabs-mysql/pull/1299)

We would like to thank [Julien Acroute][Vampouille], [Markus Opolka][martialblog], [janit42][janit42], [David Newton][zoojar] and [Alexander Fisher][alexjfisher] for the contributions and hope to see more from them in the future.

## What's happening in the community section

* CampToCamp (now a Service Delivery Partner and always stellar community supporters) have taken over maintenance of [puppet-catalog-diff][puppet-catalog-diff]

* voxpupuli tasks app development - [Tim Meusel][bastelfreak] and team are working on improving the tasks application.

  - [Fix broken modulesync detection](https://github.com/voxpupuli/vox-pupuli-tasks/issues/138)
  - [Avoid duplicate comments](https://github.com/voxpupuli/vox-pupuli-tasks/pull/142)
  - [Check user permissions for admin page](https://github.com/voxpupuli/vox-pupuli-tasks/pull/143)
  - [Mark PRs with failed CI](https://github.com/voxpupuli/vox-pupuli-tasks/pull/144)
  - Identified a bug on OS detection and working on the fix.

## PDK

The [PDK][PDK] has shifted under the ownership of the IA Content Team.
The team is currently working on our first PDK release, which we hope to have with you soon.

## Litmus

The final thing that I wish to talk about today is the work finalising our adoption of Litmus as a test environment throughout our modules:

- [puppetlabs/ibm_installation_manager](https://github.com/puppetlabs/puppetlabs-ibm_installation_manager) - porting finished for the last module, thanks to [David Swan][davidswan]

All our modules are now ported to litmus.

## Wrap-up

That's it for this weeks update, a big THANK YOU for all your contributions and support.

[iac-41]:       												https://tickets.puppetlabs.com/browse/IAC-41
[davidswan]:       									    https://github.com/david22swan
[PDK]:                                  https://github.com/puppetlabs/pdk
[sheenaajay]:                           https://github.com/sheenaajay
[pmcmaw]:                               https://github.com/pmcmaw
[Vampouille]:                           https://github.com/Vampouille
[martialblog]:                          https://github.com/martialblog
[janit42]:                              https://github.com/janit42
[zoojar]:                               https://github.com/zoojar
[alexjfisher]:                          https://github.com/alexjfisher
[ekohl]:                                https://github.com/ekohl
[bastelfreak]:                          https://github.com/bastelfreak
[Virtual Puppet Camp Germany]:          https://www.eventbrite.com/e/virtual-puppet-camp-germany-tickets-101250404686
[puppet-modulebuilder]:                  https://github.com/puppetlabs/puppet-modulebuilder
[puppet-catalog-diff]:                  https://github.com/camptocamp/puppet-catalog-diff
