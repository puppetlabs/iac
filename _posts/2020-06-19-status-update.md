---
layout: post
title: "19th June 2020: IAC Team Status Update"
author: sheenaajay
categories:
  - team
  - status
tags:
  - puppetlabs_spec_helper
  - community
  - modules
  - archived
---

The IAC team has been working on a lot of things over the past week.
We want to share with our community some of the most interesting things.
Here’s a brief overview of what we’ve been up to:

## The Return of Michael

To start things off on a high note I'd like to announce the return of [Michael T Lombardi][michaeltlombardi] to the modules team.

Michael had spent the last couple of months on paternity leave but has returned to the team, he could not stay away and is now once again ready to take part in the vital work that we accomplish throughout the year.

But enough from me, time to hear from himself:

> It felt incredibly good to write and commit code again for the first time in weeks, to grab a problem and resolve it.
> A lot of early parenting so far has been the equivalent of firefighting (babies, it seems, don't care about schedules, plans, or intentions; they need what they need when they need it!) so having a discrete concrete problem to work on was refreshing.

## Module Releases from IAC Team

The release process for the following modules has been started and these will be finished as soon as we manage to resolve our testing infrastructure issues:
- [puppetlabs/postgresql](https://github.com/puppetlabs/puppetlabs-postgresql) (6.6.0)
- [puppetlabs/ibm_installation_manager](https://github.com/puppetlabs/puppetlabs-ibm_installation_manager) (2.2.0)

## Community Shout outs for IAC

- [Dan Manners][danmanners] shared a nice write up of his [homelab deployment](https://github.com/danmanners/homelab-deployment) over on github.
- [Chad Huneycutt][chadh] ported the [git_config type&provider](https://github.com/chadh/puppetlabs-git/pull/2) over to the [Resource API][resourceapi], making it a nice example of multiple namevars and a local command-based provider.
- One of our customer is very happy about [litmus][litmus] as they were able to ramp up with litmus in a couple of days, compared to beaker which took weeks.

## Ubuntu 20.04 Certification

We have added Ubuntu 20.04 support to all of our supported modules. Thanks [David Swan][davidswan] for all the great work.

## puppetlabs_spec_helper Gem 2.15.0 Release

[puppetlabs_spec_helper][puppetlabs_spec_helper] gem, which has now [been released](https://rubygems.org/gems/puppetlabs_spec_helper/versions/2.15.0) with a couple of fixes and enhancements ([CHANGELOG](https://github.com/puppetlabs/puppetlabs_spec_helper/blob/v2.15.0/CHANGELOG.md#v2150-2020-06-11)).

## Wrap-up

That’s it for this weeks update, a big THANK YOU for all your contributions and support.

[michaeltlombardi]:       https://github.com/michaeltlombardi
[davidswan]:              https://github.com/david22swan
[PDK]:                    https://github.com/puppetlabs/pdk
[sheenaajay]:             https://github.com/sheenaajay
[danmanners]:             https://github.com/danmanners
[chadh]:                  https://github.com/chadh
[puppetlabs_spec_helper]: https://github.com/puppetlabs/puppetlabs_spec_helper
[resourceapi]:            https://puppet.com/docs/puppet/latest/custom_resources.html
[litmus]:                 https://github.com/puppetlabs/puppet_litmus
