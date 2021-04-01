---
layout: post
title: "2021-04-02: IAC Team Status Update"
author: adrianiurca
categories:
  - team
  - status
tags:
  - cloudci
  - devx
  - modules
  - apache
  - ntp
  - stdlib
  - community_management
  - tools
  - easter
---

Hello to all from our beloved community and welcome to our weekly update from the IAC Team.
Special greetings for your contributions, it means a lot for us and helps Puppet Open Source Community to grow and become strong day by day, contribution by contribution.

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-apache#2138`][puppetlabs-apache-pr-2138]: "Fix HEADER* and README* wildcards in IndexIgnore", thanks to [keto][keto]
- [`puppetlabs-ntp#615`][puppetlabs-ntp-pr-615]: "Allow setting user and group permissions of the NTP logfile", thanks to [Kristijan][kristijan]
- [`puppetlabs-stdlib#1176`][puppetlabs-stdlib-pr-1176]: "Fix typo in validate_ipv6_address function", thanks to [nbarrientos][nbarrientos]
- [`community_management#68`][community_management-pr-68]: "Added back the ability to manage labels on multiple repos", thanks to [yachub][yachub]

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## We need your feedback!

We are currently working on revamping our documentation for contributing to a module (CONTRUBUTING.md). We noticed it was out of date and referencing running tests on beaker which is no longer the case. There is a PR up to improve our wording and how you can contribute to our modules. If you have time a review or any improvements/suggestions would be fantastic. It is super important that we make the documentation functional for community members like yourself. You can find the draft PR [here](https://github.com/puppetlabs/puppetlabs-ntp/pull/617).

## Extra special shout out

We just want to take some time to acknowledge and thank our contributor [LooOOooM](https://github.com/LooOOooM) for remaining patient. Due to a break down of communication and a company holiday a module release did not go out as usually scheduled (on Mondays Community Day). In the future we will try our best to avoid situations like this and keep you all in the loop. We always appreciate feedback on how we can improve what we do. Sometimes this can be difficult as we are a small team supporting 50+ modules and tools and at the same time trying to keep everything moving. For specific team announcements please continue to tune into this blog, posted every Friday (unless stated the week before). This blog also contains some useful how to guides so feel free to check them out! :-)

## Operational Verification at Puppet Camp

At the [Puppet Camp: Become a better Puppet developer](https://puppet.com/events/become-a-better-puppet-developer/), DavidS will talk about "Operational Verification":

> Sure, your Puppet ran finished successfully, but did it do what you expected?

You can find some work in progress in the [puppetlabs/opv](https://github.com/puppetlabs/opv) repository. [Register](https://puppet.com/events/become-a-better-puppet-developer/) to see the talk live. If you want to provide input into the future of this development, please [send us a quick message](https://puppetlabs.github.io/iac/team/2021/01/20/reaching-out.html) to volunteer.

## Cloud CI Update

The week we finally managed to merge the necessary code changes for the required dependencies into the provisioning service. With these changes we'll finally be able to merge the port of the [puppetlabs-ibm_installation_manager](https://github.com/puppetlabs/puppetlabs-ibm_installation_manager/pull/169) and have nightly and PR integration testing.
The work for the [puppetlabs-websphere_application_server](https://github.com/puppetlabs/puppetlabs-websphere_application_server/pull/225) is still in progress but we are slowly getting that [ready](https://github.com/puppetlabs/puppetlabs-websphere_application_server/actions/runs/701871477). We still have some issues with the puppet7-nightly version that we are curently investigating.
From next week we are starting work to prepare a couple of training and educational materials while we start closing down on the multi-node support.

### DevX Team Update

We're currently working towards getting the PDK 2.1 release out the door and are aiming to have it available next week.
Speaking of PDK, we're looking for feedback on how to build a better PDK.
If you have any opinions, we'd greatly appreciate your feedback in [this survey](https://pup.pt/pdk2021)!

## Easter Holidays

As we are a global company, different offices will be offline on different days to celebrate Easter. EMEA will be offline on Friday 2nd and Monday 5th April and Timisoara will be offline to celebrate on Friday 30th April and Monday 3rd May.
Community Day on Monday will slow down due to a decreased headcount therefore please be patient with us. :-) If there are any reviews or releases we don't get around to doing, they will be picked up the week beginning 12th April. Anything urgent, as always make sure to let us know and we will do our best to prioritize.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-concat`][puppetlabs-concat] (`7.0.1`)
- [`puppetlabs-ntp`][puppetlabs-ntp] (`9.0.1`)
- [`puppetlabs-apt`][puppetlabs-apt] (`8.0.2`)
- [`puppetlabs-inifile`][puppetlabs-inifile] (`5.0.1`)
- [`puppetlabs-haproxy`][puppetlabs-haproxy] (`6.0.0`)
- [`puppetlabs-accounts`][puppetlabs-accounts] (`7.0.2`)

  [puppetlabs-concat]: https://github.com/puppetlabs/puppetlabs-concat
  [puppetlabs-ntp]: https://github.com/puppetlabs/puppetlabs-ntp
  [puppetlabs-apt]: https://github.com/puppetlabs/puppetlabs-apt
  [puppetlabs-inifile]: https://github.com/puppetlabs/puppetlabs-inifile
  [puppetlabs-haproxy]: https://github.com/puppetlabs/puppetlabs-haproxy
  [puppetlabs-accounts]: https://github.com/puppetlabs/puppetlabs-accounts
  [puppetlabs-apache-pr-2138]: https://github.com/puppetlabs/puppetlabs-apache/pull/2138
  [keto]: https://github.com/keto
  [puppetlabs-ntp-pr-615]: https://github.com/puppetlabs/puppetlabs-ntp/pull/615
  [kristijan]: https://github.com/Kristijan
  [puppetlabs-stdlib-pr-1176]: https://github.com/puppetlabs/puppetlabs-stdlib/pull/1176
  [nbarrientos]: https://github.com/nbarrientos
  [community_management-pr-68]: https://github.com/puppetlabs/community_management/pull/68
  [yachub]: https://github.com/yachub

## Other Work

<!-- check https://tickets.puppetlabs.com/secure/RapidBoard.jspa?rapidView=1176&quickFilter=8745 for other tickets closed out this week that should be mentioned here -->

[adrian]: https://github.com/adrianiurca
[ben]: https://github.com/binford2k
[ciaran]: https://github.com/sanfrancrisko
[daiana]: https://github.com/daianamezdrea
[danny]: https://github.com/carabasdaniel
[davidarmstrong]: https://github.com/da-ar
[davidschmitt]: https://github.com/DavidS
[davidswan]: https://github.com/david22swan
[disha]: https://github.com/Disha-maker
[james]: https://github.com/jpogran
[lore]: https://github.com/lionce
[michael]: https://github.com/michaeltlombardi
[paula]: https://github.com/pmcmaw
[sheena]: https://github.com/sheenaajay
[supported modules]: https://puppetlabs.github.io/iac/modules/
[tools]: https://puppetlabs.github.io/iac/tools/
