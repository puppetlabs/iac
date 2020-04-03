---
layout: post
title: "3rd April 2020: IAC Team Status Update"
author: sanfrancrisko
categories:
  - team
  - status
tags:
  - module updates
  - community
  - litmus
  - testing
  - dsc
  - powershell
  - windows
---
The IAC team has been working on a lot of interesting things over the past week.
Here's a brief overview of what we've been up to:

## COVID-19
We've now completed our 3rd week as a fully remote working team.
It seems like we've all adopted fairly well as it's feeling like the "new normal", insofar as normal can be during these unprecedented times.
One new addition to our team's process is our Friday social chats.
We all down tools and chill out, chat, have a drink and play some games!
Often, the team members' pets will make a welcome appearance. :)
We hope you, your friends, family and colleagues are continuing to weather the storm and that everyone is healthy and safe.
Puppet have been striving to [help our customers, community members, users and partners][puppet-cv-19] during this difficult time.
The IAC team continue to remain engaged with the always awesome Community to keep the conveyer belt of improvements moving!
Stay safe and well!

## New Module Releases (IAC Team)
Let's kick things off by highlighting some new module releases:
- [puppetlabs/firewall](https://forge.puppet.com/puppetlabs/firewall) (v2.3.0)
- [puppetlabs/iis](https://forge.puppet.com/puppetlabs/iis) (v7.0.1)
- [puppetlabs/ntp](https://forge.puppet.com/puppetlabs/ntp) (v8.3.0)

#### puppetlabs/iis v7.0.1
Thanks to [pillarsdotnet][pillarsdotnet] for [his PR][pillarsdotnet-pr] that fixed [MODULES-10419][MODULES-10419]!

We'd also like to thank [johnrogers00][johnrogers00] for [his fix][johnrogers00-pr] and additional test coverage!

## New Module Releases (Community)
It's great to see members outside of the IAC Team releasing new modules:
- [puppetlabs/zfs_core](https://forge.puppet.com/puppetlabs/zfs_core) (v1.0.5)

Thanks to [GabrielNagy][GabrielNagy] and [ciprianbadescu][ciprianbadescu] for their efforts to get this new version of [zfs_core](https://forge.puppet.com/puppetlabs/zfs_core) released.

## Litmus gem v0.18.1 release
We have released v0.18.1 of the [puppet_litmus gem][litmus-gem-home].
There were quite a number of fixes that went in to [v0.18.0][litmus-v-0-18-0-cl] and [v0.18.1][litmus-v-0-18-1-cl], but a few highlights worth mentioning:
- [tphoney][tp] added support for [Bolt][bolt] v2!
- We have been working with [jmangt][jmangt] to allow Litmus to [install modules from a private Forge repo][litmus-pr-260].
- A [number of fixes][fixes-0-18-0] from [DavidS][david], a fix from [findmyname666][findmyname666] and improvements to the docs from [clairecadman][claire]!

## Supported Module Litmus Conversion
On the topic of [Litmus][litmus-gem-home], we're continuing to make progress on the conversion of all supported modules to the framework:
- [puppetlabs/reboot][puppetlabs/reboot] is now running in the framework on most of the supported 33 compatible platforms; only a few more to go!
- [puppetlabs/satellite_pe_tools][puppetlabs/satellite_pe_tools] is progressing nicely!
- [puppetlabs/websphere_application_server][websphere_application_server] is nearly complete and entering the review stage! We'll hope to get this over the line very soon.

After that, we'll be moving on to [puppetlabs/ibm_installation_manager][puppetlabs/ibm_installation_manager].

## Puppet + DSC
[michaeltlombardi][michael] has continued to make excellent progress on our [refactor of DSC support][iac-41] in Puppet.
To find out what we're doing, the reasoning behind it and why we're **SUPER EXCITED** about this, check out [Michael's][michael] [earlier blog post]({% link _posts/2020-03-30-dsc-announcement.md %})

## Debugging with Honeycomb
[Honeycomb][honeycomb] continues to provide us interesting insights that guide us to problems lurking in our test infrastructure.
[dev_el_ops][david] used the reported data/metrics to investigate an issue pointed out by [carabasdaniel][danny].
Check out [dev_el_ops's][david] [earlier blog post]({% link _posts/2020-03-30-debugging-unit-tests-with-honeycomb.md %}) about it.

[ciprianbadescu]:												https://github.com/ciprianbadescu
[GabrielNagy]:													https://github.com/GabrielNagy
[websphere_application_server]:					https://forge.puppet.com/puppetlabs/websphere_application_server
[puppetlabs/satellite_pe_tools]:				https://forge.puppet.com/puppetlabs/satellite_pe_tools
[danny]:																https://github.com/carabasdaniel
[honeycomb]:														https://honeycomb.io/
[iac-41]:       												https://tickets.puppetlabs.com/browse/IAC-41
[michael]:															https://github.com/michaeltlombardi
[puppetlabs/ibm_installation_manager]:	https://forge.puppet.com/puppetlabs/ibm_installation_manager
[puppetlabs/reboot]:										https://forge.puppet.com/puppetlabs/reboot
[MODULES-10419]:												https://tickets.puppetlabs.com/browse/MODULES-10419
[pillarsdotnet-pr]:											https://github.com/puppetlabs/puppetlabs-iis/pull/254
[pillarsdotnet]:												https://github.com/pillarsdotnet
[johnrogers00-pr]:											https://github.com/puppetlabs/puppetlabs-iis/pull/272
[johnrogers00]:													https://github.com/johnrogers00
[claire]:																https://github.com/clairecadman
[findmyname666]:												https://github.com/findmyname666
[litmus-pr-260]: 												https://github.com/puppetlabs/puppet_litmus/pull/260
[bolt]:																	https://github.com/puppetlabs/bolt
[fixes-0-18-0]:													https://github.com/puppetlabs/puppet_litmus/blob/master/CHANGELOG.md#fixed-1
[david]:																https://github.com/DavidS					
[tp]:																		https://github.com/tphoney
[jmangt]:																https://github.com/jmangt
[litmus-v-0-18-1-cl]:										https://github.com/puppetlabs/puppet_litmus/blob/master/CHANGELOG.md#0181-2020-04-02
[litmus-v-0-18-0-cl]:										https://github.com/puppetlabs/puppet_litmus/blob/master/CHANGELOG.md#v0180-2020-03-31
[litmus-gem-home]:											https://github.com/puppetlabs/puppet_litmus
[puppet-cv-19]:													https://puppet.com/blog/covid-19-a-note-for-our-community/