---
layout: post
title: "29th May 2020: IAC Team Status Update"
author: sanfrancrisko
categories:
  - team
  - status
tags:  
  - demos
  - docker
  - java
  - litmus
  - apt
  - kubernetes
  - apache
  - pdksync
  - provisioner
  - dsc
  - windows
  - community
  - modules
---

Greetings from the IAC Team - here's our status update for this week!

## Module Releases from IAC Team
Here's the new releases in the modules this week:
- [puppetlabs/docker](https://github.com/puppetlabs/puppetlabs-motd) (3.10.1)
- [puppetlabs/java](https://github.com/puppetlabs/puppetlabs-java) (6.3.0)

## Module Releases from Puppet
Here's some module releases from other teams in Puppet you may be interested in:
- [puppetlabs/python_task_helper](https://forge.puppet.com/puppetlabs/python_task_helper) (v0.4.3)

## Gem Releases
We're happy to announce a new version of [Litmus](https://github.com/puppetlabs/puppet_litmus) has been released:
- [v0.18.2](https://github.com/puppetlabs/puppet_litmus/blob/master/CHANGELOG.md#0182-2020-05-28) contains a number of fixes from [Paula](https://github.com/pmcmaw), [DavidS](https://github.com/DavidS) and [mmarod](https://github.com/mmarod). Full details in the [CHANGELOG](https://github.com/puppetlabs/puppet_litmus/blob/master/CHANGELOG.md#0182-2020-05-28)!

## Community Contributions
The wonderful community members that continue to contribute to our modules have provided us with the following enhancements:
- **[`puppetlabs-apt#938`](https://github.com/puppetlabs/puppetlabs-apt/pull/938):** [mdklapwijk](https://github.com/mdklapwijk) added support for https repositories by making use of the [`tell-me-what-you-need`](https://www.unix-ag.uni-kl.de/~bloch/acng/html/howtos.html#ssluse) method in [`apt-cacher-ng`](https://wiki.debian.org/AptCacherNg).
- **[`puppetlabs-kubernetes#412`](https://github.com/puppetlabs/puppetlabs-kubernetes/pull/412):** A HUGE number of improvements from [Wiston999](https://github.com/Wiston999). Check out [the PR](https://github.com/puppetlabs/puppetlabs-kubernetes/pull/412) for all the details.
- **[`puppetlabs-apache#2033`](https://github.com/puppetlabs/puppetlabs-apache/pull/2033):** [thechristschn](https://github.com/thechristschn) enhanced the `proxy_protocol_exceptions` param in `mod_remoteip` to accept IPv6 addresses in CIDR notation.
- **[`puppetlabs-java#429`](https://github.com/puppetlabs/puppetlabs-java/pull/429):** [fraenki](https://github.com/fraenki) made an enhacement to allow management of symlinks in the `java::adopt` defined type.

Many thanks to [mdklapwijk](https://github.com/mdklapwijk), [Wiston999](https://github.com/Wiston999), [thechristschn](https://github.com/thechristschn) and [fraenki](https://github.com/fraenki) for your excellent contributions!

## IAC Team Demos
We frequently demo some of the the enhancements to the [tools]({% link tools.html %}) under our management to ourselves or the wider company.
Check out the videos on our new [demos]({% link _docs/demos.md %}) page where you can see:
- [Danny](https://github.com/carabasdaniel) taking you through the steps for adding a new provisioner to [Litmus](https://github.com/puppetlabs/puppet_litmus)
- [Sheena](https://github.com/sheenaajay) demonstrating how we use the invaluable [pdksync](https://github.com/puppetlabs/pdksync) for deploying and testing the same change to multiple repos

## PuppetDSCBuilder Beta Testing
It has been greatly encouraging to see a number of people signed up to be early adopters of the [`PuppetDSCBuilder`](https://github.com/puppetlabs/PuppetDscBuilder) project.
We just had another sign up this week!
If you're heavily involved in Windows admin, Powershell and DSC, check out the [previous blog post]({% link _posts/2020-03-30-dsc-announcement.md %}) from [Michael](https://github.com/michaeltlombardi) which outlines the functionality and how to get in touch with us to participate!

That's a wrap for this week!
To our Romanian IAC team members ([Danny](https://github.com/carabasdaniel), [Daiana](https://github.com/daianamezdrea), [Adrian](https://github.com/adrianiurca)) and any Romanian readers out there - enjoy the long weekend!
