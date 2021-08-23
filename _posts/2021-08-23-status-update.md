---
layout: post
title: "2021-08-23: IAC & DevX Team Status Update"
author: "ia-content"
categories:
  - team
  - status
tags:
  - pct
  - debian11
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-postgresql#1291`][puppetlabs-postgresql-pr-1291]: "[IAC-1735] Fix test suite", thanks to [ekohl][ekohl] and the following people who helped get it over the line ([smortex][smortex], [bastelfreak][bastelfreak])
- [`puppetlabs-reboot#305`][puppetlabs-reboot-pr-305]: "(MODULES-11149) Modify result of 'last' to remove current time", thanks to [nmburgan][nmburgan]
- [`facterdb#185`][facterdb-pr-185]: "Add Debian 11 facts", thanks to [smortex][smortex]
- [`facterdb#184`][facterdb-pr-184]: "Add more FreeBSD facts", thanks to [smortex][smortex]
- [`facterdb#183`][facterdb-pr-183]: "Add Oracle Linux 8 facts", thanks to [as0bu][as0bu]
- [`facterdb#181`][facterdb-pr-181]: "Adding puppet7 facter4.2 facts for centos7/8 and debian9/10", thanks to [jacobmw][jacobmw] and the following people who helped get it over the line ([kenyon][kenyon])
- [`facterdb#176`][facterdb-pr-176]: "Adds Rocky Linux vagrant image, facts and get_facts.sh support", thanks to [fuero][fuero] and the following people who helped get it over the line ([ghoneycutt][ghoneycutt], [smortex][smortex])
- [`puppet_litmus#425`][puppet_litmus-pr-425]: "Added options to idempotent_apply", thanks to [ZloeSabo][ZloeSabo]

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-accounts`][puppetlabs-accounts] (`7.1.0`)
- [`puppetlabs-package`][puppetlabs-package] (`2.1.0`)
- [`puppetlabs-reboot`][puppetlabs-reboot] (`4.1.0`)
- [`puppetlabs-haproxy`][puppetlabs-haproxy] (`6.2.0`)
- [`puppetlabs-concat`][puppetlabs-concat] (`7.1.0`)

  [puppetlabs-accounts]: https://github.com/puppetlabs/puppetlabs-accounts
  [puppetlabs-package]: https://github.com/puppetlabs/puppetlabs-package
  [puppetlabs-reboot]: https://github.com/puppetlabs/puppetlabs-reboot
  [puppetlabs-haproxy]: https://github.com/puppetlabs/puppetlabs-haproxy
  [puppetlabs-concat]: https://github.com/puppetlabs/puppetlabs-concat
  [puppetlabs-postgresql-pr-1291]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1291
  [ekohl]: https://github.com/ekohl
  [smortex]: https://github.com/smortex
  [bastelfreak]: https://github.com/bastelfreak
  [puppetlabs-reboot-pr-305]: https://github.com/puppetlabs/puppetlabs-reboot/pull/305
  [nmburgan]: https://github.com/nmburgan
  [facterdb-pr-185]: https://github.com/voxpupuli/facterdb/pull/185
  [facterdb-pr-184]: https://github.com/voxpupuli/facterdb/pull/184
  [facterdb-pr-183]: https://github.com/voxpupuli/facterdb/pull/183
  [as0bu]: https://github.com/as0bu
  [facterdb-pr-181]: https://github.com/voxpupuli/facterdb/pull/181
  [jacobmw]: https://github.com/jacobmw
  [kenyon]: https://github.com/kenyon
  [facterdb-pr-176]: https://github.com/voxpupuli/facterdb/pull/176
  [fuero]: https://github.com/fuero
  [ghoneycutt]: https://github.com/ghoneycutt
  [puppet_litmus-pr-425]: https://github.com/puppetlabs/puppet_litmus/pull/425
  [ZloeSabo]: https://github.com/ZloeSabo

## DevX Updates

We released [version `0.3.0` of the PCT tool](https://github.com/puppetlabs/pdkgo/releases/tag/0.3.0) last Friday.
This introduces the ability to package up and [share content templates](https://github.com/puppetlabs/pdkgo#sharing-templates).

Instructions on how to install the PCT tool can be [found here](https://github.com/puppetlabs/pdkgo#installing).

## Community Day

As no summer can end without a holiday, some of our our team members are on a short PTO .
Next Monday is a bank holiday in EMEA, therefore community day will be quieter.

## Debian 11 Support

We added support for Debian 11 across all our supported modules and started releasing the modules with Debian 11 support.

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
