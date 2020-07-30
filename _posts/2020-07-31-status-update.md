---
layout: post
title: "31th July 2020: IAC Team Status Update"
author: david22swan
categories:
  - team
  - status
tags:
  - releases
  - pdk
  - shoutouts
  - security
  - rspec-puppet
  - java
  - inifile
  - docker
---

It's Friday - time for another status update from the IAC Team!
Here's an overview of some of the work we and the community have been up to recently:

## Module Releases from IAC Team
We've had a few modules released this week:
- [puppetlabs-firewall][firewall-forge][`v2.5.0`][firewall-2-5-0]
- [puppetlabs-websphere_application_server][websphere_application_server-forge][`v2.1.0`][websphere_application_server-2-1-0]

## Community Contributions
We've had plenty of great community contributions this week:
- 

## Puppet 7
Testing with the Puppet 7 nightly builds began in earnest, this week.
Whilst building out our automation for more extensive and regular testing (_using [pdksync]({% link tools/pdksync.html %}) at it's core_), we have been running tests against a subset of the [supported modules]({% link modules.html %}).
So far, testing has generally been quite positive, with some minor issues arising.
Fortunately, we work with awesome colleagues who are very quick to react to any issues we discover, helping with the debugging process and providing fixes really quickly.
Thanks to [joshcooper][joshcooper], we hope to have a fix for one of these issues quite soon!
[gimmyxd][gimmyxd] and [mihaibuzgau][mihaibuzgau] are helping to analyse the other issue we're currently encountering and [binford2k][binford2k] has been assisting in how we communicate any potential impacts to the Puppet Community.
On that note, it goes without saying, we are doing everything possible to make the jump to Puppet 7 as seamless as possible and provide clear communication to the Community for anything that you will need to be aware of.

## DSC Revamp

## CI update

[puppetlabs-websphere_application_server]:  https://github.com/puppetlabs/puppetlabs-websphere_application_server
[websphere_application_server-forge]:       https://forge.puppet.com/puppetlabs/websphere_application_server
[websphere_application_server-2-1-0]:       https://forge.puppet.com/puppetlabs/websphere_application_server/2.1.0/changelog
[puppetlabs-firewall]:                      https://github.com/puppetlabs/puppetlabs-firewall
[firewall-forge]:                           https://forge.puppet.com/puppetlabs/firewall
[firewall-2-5-0]:                           https://forge.puppet.com/puppetlabs/firewall/2.5.0/changelog
[mihaibuzgau]:                              https://github.com/mihaibuzgau
[gimmyxd]:                                  https://github.com/gimmyxd
[joshcooper]:	                              https://github.com/joshcooper
[binford2k]:	                              https://github.com/binford2k
