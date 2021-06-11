---
layout: post
title: "2021-06-11: IAC & DevX Team Status Update"
author: bethglenfield
categories:
  - team
  - status
tags:
  - pct
  - rsapi
  - trusted_contributors
  - facter
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-apache#2142`][puppetlabs-apache-pr-2142]: "The default disk_cache.conf.erb caches everything. ", thanks to [Pawa2NR][Pawa2NR]
- [`puppetlabs-concat#708`][puppetlabs-concat-pr-708]: "fix merge nil hashes", thanks to [thde][thde]
- [`puppetlabs-concat#705`][puppetlabs-concat-pr-705]: "Do not modify metaparams in place", thanks to [ekohl][ekohl]
- [`puppetlabs-docker#752`][puppetlabs-docker-pr-752]: "Allow force update non-latest tagged image", thanks to [yanjunding][yanjunding]
- [`puppetlabs-mysql#1396`][puppetlabs-mysql-pr-1396]: "(bugfix) - Pull python3-mysqldb in Debian Bullseye", thanks to [thomasgoirand][thomasgoirand]

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-mysql`][puppetlabs-mysql] (`11.0.2`)

  [puppetlabs-mysql]: http://github.com/puppetlabs/puppetlabs-mysql
  [puppetlabs-apache-pr-2142]: https://github.com/puppetlabs/puppetlabs-apache/pull/2142
  [Pawa2NR]: https://github.com/Pawa2NR
  [puppetlabs-concat-pr-708]: https://github.com/puppetlabs/puppetlabs-concat/pull/708
  [thde]: https://github.com/thde
  [puppetlabs-concat-pr-705]: https://github.com/puppetlabs/puppetlabs-concat/pull/705
  [ekohl]: https://github.com/ekohl
  [puppetlabs-docker-pr-752]: https://github.com/puppetlabs/puppetlabs-docker/pull/752
  [yanjunding]: https://github.com/yanjunding
  [puppetlabs-mysql-pr-1396]: https://github.com/puppetlabs/puppetlabs-mysql/pull/1396
  [thomasgoirand]: https://github.com/thomasgoirand

## DevX Team
With version `0.1.0` of the experimental PCT release out for a week, we've been delighted by the positive and constructive feedback coming our way.
If you're wondering what all this is about, check out [this blog post]((({% link _posts/2021-06-04-pct-early-release.md %}))) from last week - the more feedback we can garner, the better!
On that topic, [James][James] took part in the most recent episode of [Pulling the Strings](https://www.twitch.tv/videos/1050922724) live on the [Puppetize Twitch Channel](https://www.twitch.tv/puppetize) with [Lauren](https://twitter.com/LoLoCoding), Puppet's Community Director.
Braving the ire of the demo gods is always a risky venture, but, [James][James] showcased the speed, flexibility, speed, potential and speed of the PCT tool, excellently! You can [watch the video at your own leisure](https://www.twitch.tv/videos/1050922724) if you missed the live stream - well worth checking out!
We're now working on the next release `0.2.0`, with some enhancements shaped by the feedback we've been getting from the early adopters.
Also on our radar is some fixes and enhancements to PDK, which should be landing in a release soon

## Resource API custom_insync now available
You can now provide custom `insync?` logic to the Resource API, making adding new native Puppet resources much more flexible. Changes are now available in both the Puppet 6 and Puppet 7 nightly builds, and you can find a documentation preview [here](https://github.com/puppetlabs/puppet-specifications/pull/153).

## PDK updates
All spec unit tests across the supported modules workflows are now running using the latest Facter code!
This will allow us to catch any potential compatibility problems earlier with Facter / Puppet / Modules.

## Trusted Contributors Assemble!
We're thrilled to have several Trusted Contributors onboarded into the TC program (find out more in our previous blog post, or on the [Puppet website](https://puppet.com/ecosystem/trusted-contributors/)), with five sign ups in one week! The team wanted to give a big shout out to [ekohl][ekohl] on their first PR review.

<!-- check https://tickets.puppetlabs.com/secure/RapidBoard.jspa?rapidView=1176&quickFilter=8745 for other tickets closed out this week that should be mentioned here -->

  [Adrian]:             https://github.com/adrianiurca
  [Ben]:                https://github.com/binford2k
  [Ciaran]:             https://github.com/sanfrancrisko
  [Daiana]:             https://github.com/daianamezdrea
  [Danny]:              https://github.com/carabasdaniel
  [DavidArmstrong]:     https://github.com/da-ar
  [DavidSchmitt]:       https://github.com/DavidS
  [DavidSwan]:          https://github.com/david22swan
  [Disha]:              https://github.com/Disha-maker
  [James]:              https://github.com/jpogran
  [Lore]:               https://github.com/lionce
  [Michael]:            https://github.com/michaeltlombardi
  [Paula]:              https://github.com/pmcmaw
  [Sheena]:             https://github.com/sheenaajay
  [Supported Modules]:  https://puppetlabs.github.io/iac/modules/
  [Tools]:              https://puppetlabs.github.io/iac/tools/
