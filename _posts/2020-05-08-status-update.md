---
layout: post
title: "8th May 2020: IAC Team Status Update"
author: DavidS
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

## Module Releases

Modules released this week:
- [puppetlabs/accounts](https://forge.puppet.com/puppetlabs/accounts) (v6.1.1)

Modules released by other teams around the company:
- [puppetlabs/cd4pe](https://forge.puppet.com/puppetlabs/cd4pe) (v2.0.0)
- [puppetlabs/cd4pe_jobs](https://forge.puppet.com/puppetlabs/cd4pe_jobs) (v1.1.0)
- [puppetlabs/cron_core](https://forge.puppet.com/puppetlabs/cron_core) (v1.0.4)
- [puppetlabs/gcloud_inventory](https://forge.puppet.com/puppetlabs/gcloud_inventory) (v0.1.1)
- [puppetlabs/pkcs7](https://forge.puppet.com/puppetlabs/pkcs7) (v0.1.0)
- [puppetlabs/puppet_authorization](https://forge.puppet.com/puppetlabs/puppet_authorization) (v0.5.1)

## Team Roster Changes

Michael Lombardi, our resident Windows and PowerShell expert, has [announced great news](https://twitter.com/TrebuchetOps/status/1256985345830400002) and will not be available for the next while.

A big HORRAY!! and all the best from the team!

## Virtual Puppet Camp Germany

Puppet Camp Berlin has come and gone.
[Paula](https://github.com/pmcmaw) and [Helen](https://github.com/HelenCampbell) did a fantastic job at MC'ing the event.
The talks are available on [the YouTube channel](https://www.youtube.com/user/PuppetLabsInc/).
You'll also find the talks from the Australian or US East camps there.
For example, [Automated Testing of your Infracode](https://www.youtube.com/watch?v=iqBzBVTlwWI) by Jesse Reynolds.

Thanks to everyone who contributed, chatted in [Slack](https://slack.puppet.com/), or just was listening in on the talks and learned something!

## Continued Work on Puppet DSC

The [Puppet DSC project](https://tickets.puppetlabs.com/browse/IAC-41) continues on through phase II, with this week seeing [an annoying bug(https://tickets.puppetlabs.com/browse/IAC-781)] being squashed and the first trial modules being sent out to beta testers.

To any community members who still would like to be part of our beta testing program, I encourage you to reach out to [dsc@puppet.com](mailto:dsc@puppet.com) with answers to the following questions:

- What are the top three PowerShell modules with DSC resources you use/depend on the most?

## Community Contributions

When we talk of community it's not just the issues that they have raised, but also the contributions that they have made, so here's a few of the excellent PRs opened by community members that have been merged in over the last week:

A clear thank you for [binford2k](https://github.com/binford2k) for these great PRs on the postgresql module:
- [Mark version param as deprecated in server.pp comments](https://github.com/puppetlabs/puppetlabs-postgresql/pull/1168)
- [service_ensure => true is now an allowed value (aliased to running)](https://github.com/puppetlabs/puppetlabs-postgresql/pull/1167)

Another big thank you for [alexjfisher](https://github.com/alexjfisher) on his great contributions to the apache module:
- [Replace `validate_apache_loglevel` method with data type](https://github.com/puppetlabs/puppetlabs-apache/pull/2023)
- [Tidy up `pw_hash` function](https://github.com/puppetlabs/puppetlabs-apache/pull/2024)
- [Replace legacy `bool2httpd()` function with shim](https://github.com/puppetlabs/puppetlabs-apache/pull/2025)

Thank you [zoojar](https://github.com/zoojar) for ensuring consistency on the bootstrap module:
- [Ensure '$set_noop' is lowercase for consistency](https://github.com/puppetlabs/puppetlabs-bootstrap/pull/141)

Thank you [akerl-unpriv](https://github.com/akerl-unpriv) for this new feature on the firewall module:
- [Add support for cgroup arg - firewall](https://github.com/puppetlabs/puppetlabs-firewall/pull/916)

## Short week

With Friday being a bank holiday in the UK and May 1st being a bank holiday in Romania *and* Puppet taking a global mental health day on May 4th, this week was particularly short and compressed. We'll be back to our regular schedule next week.

## PDK

> The [PDK](https://github.com/puppetlabs/pdk) has shifted under the ownership of the IA Content Team.
> The team is currently working on our first PDK release, which we hope to have with you soon.

The release handover was impacted by a garden variety of fun issues from build infrastructure hiccups to a last minute breakage through an upstream gem.
Worry not, the release is still inevitable.

## Wrap-up

That's it for this weeks update, a big THANK YOU for all your contributions and support.
