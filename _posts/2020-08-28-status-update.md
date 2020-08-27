---
layout: post
title: "28th August 2020: IAC Team Status Update"
author: sheenaajay
categories:
  - team
  - status
tags:
  - releases
  - shoutouts
  - acl
  - accounts
  - motd
  - stdlib
  - puppet-module-gems
  - holiday time
  - team work
---

The IAC team has been working on a lot of things over the past week.
We want to share with our community some of the most interesting things.
Here’s a brief overview of what we’ve been up to:

## Module Releases from IAC Team
We've had a few modules released this week:
- [puppetlabs/chocolatey](https://github.com/puppetlabs/puppetlabs-chocolatey) (v5.1.0)
- [puppetlabs/scheduled_task](https://github.com/puppetlabs/puppetlabs-scheduled_task) (v2.2.1)
- [puppetlabs/tomcat](https://github.com/puppetlabs/puppetlabs-tomcat) (v4.2.0)
- [puppetlabs/kubernetes](https://github.com/puppetlabs/puppetlabs-kubernetes) (v5.3.0)

## puppet-module-gems
 `v0.5.1` of `puppet-module-gems` for Ruby 2.7 on Windows has been uploaded to [RubyGems](https://rubygems.org/)

## Litmus
Litmus was borken due to the following [issue](https://github.com/puppetlabs/bolt/issues/2117).
Thanks alot to the bolt team for the quick turn around and release of [2.25.0](https://rubygems.org/gems/bolt).

## Community Contributions
We'd like to thank the fantastic Puppet Community for the following contributions over the past week:

- [puppetlabs/puppetlabs-accounts](https://github.com/puppetlabs/puppetlabs-accounts): Thanks to [Jarret Lavallee][jarretlavallee] for this [change](https://github.com/puppetlabs/puppetlabs-accounts/pull/333) which allows for sensitive type passwords in accounts::user .
- [puppetlabs/provision](https://github.com/puppetlabs/provision): [Dylan][dylanratcliffe] for this [fix](https://github.com/puppetlabs/provision/pull/94) to ensure that conflict detection works as anticipated when boxes have a slash in their name.

- Shout out to [Kevin Reeuwijk][kreeuwijk] for reporting the ticket, [MODULES-10783](https://tickets.puppetlabs.com/browse/MODULES-10783) has now been resolved and released also thanks for your cooperation and help when working through the module self service process.

- Shout out to [Ciaran][sanfrancrisko] and [David][david22swan] for the quick turn around on the fixes for [puppetlabs/puppetlabs-scheduled_task](https://github.com/puppetlabs/puppetlabs-scheduled_task). Both the bugs are fixed and released.
  - [fix1](https://github.com/puppetlabs/puppetlabs-scheduled_task/pull/161)
  - [fix2](https://github.com/puppetlabs/puppetlabs-scheduled_task/pull/158)

## Puppet 7
Puppet 7 testing is ongoing. Platforms currently tested for the nightly builds are CentOS7, Debian10, RHEL8, SLES15, Ubuntu20.04, WinServ2012R2, WinServ2016, Win Serv2019. Subset of acceptance tests, tagged with the "integration" label against the latest Puppet 7 nightly build.

## DSC Builder Nearing Testing

The tickets closed out this week represent the last technical implementation blockers for this phase of the project, everything else is documentation, testing, and user feedback! We're nearing a launch of the PowerShell module to the [public Gallery](https://powershellgallery.com)!

## Time for holiday
As no summer can end without a holiday, our team member [Ciaran][sanfrancrisko] will have a short PTO for recharging the batteries and prepare for a new season of fixing bugs!

## Wrap-up
That’s it for this weeks update, a big THANK YOU for all your contributions and support.

[dylanratcliffe]:             https://github.com/dylanratcliffe
[jarretlavallee]:             https://github.com/jarretlavallee
[kreeuwijk]:                  https://github.com/kreeuwijk
[sanfrancrisko]:              https://github.com/sanfrancrisko
[david22swan]:                https://github.com/david22swan
[carabasdaniel]:              https://github.com/carabasdaniel
