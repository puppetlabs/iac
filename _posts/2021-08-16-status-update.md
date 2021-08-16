---
layout: post
title: "2021-08-16: IAC & DevX Team Status Update"
author: "ia-content"
categories:
  - team
  - status
tags:
  - java
  - pdksync
  - accounts
  - package
  - debian11
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-accounts#388`][puppetlabs-accounts-pr-388]: "MODULES-11100 - Add sk-ecdsa public key support, and implement tests for sk-ecdsa and ecdsa keys", thanks to [vollmerk][vollmerk]
- [`puppetlabs-kubernetes#530`][puppetlabs-kubernetes-pr-530]: "Enable live-restore for Docker daemon.", thanks to [peteroruba][peteroruba]
- [`puppetlabs-mysql#1427`][puppetlabs-mysql-pr-1427]: "MODULES-8373 Fix mysql_grant resource to be idempodent on MySQL 8+", thanks to [theq86][theq86]
- [`puppetlabs-postgresql#1291`][puppetlabs-postgresql-pr-1291]: "[IAC-1735] Fix test suite", thanks to [ekohl][ekohl] and the following people who helped get it over the line ([smortex][smortex], [bastelfreak][bastelfreak])
- [`puppetlabs-stdlib#1196`][puppetlabs-stdlib-pr-1196]: "Flip installed and present in Function ensure_packages", thanks to [cocker-cc][cocker-cc] and the following people who helped get it over the line ([bastelfreak][bastelfreak], [ekohl][ekohl])
- [`pdk-templates#443`][pdk-templates-pr-443]: "Only auto release if the changelog is updated", thanks to [jarretlavallee][jarretlavallee]
- [`metadata-json-lint#118`][metadata-json-lint-pr-118]: "release 3.0.1", thanks to [bastelfreak][bastelfreak] and the following people who helped get it over the line ([ekohl][ekohl])

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-java`][puppetlabs-java] (`7.1.0`)
- [`puppetlabs-accounts`][puppetlabs-accounts] (`7.1.0`)
- [`puppetlabs-package`][puppetlabs-package] (`2.1.0`)
- [`pdksync`][pdksync]  (`0.6.0`)

  [puppetlabs-java]: https://github.com/puppetlabs/puppetlabs-java
  [puppetlabs-accounts]: https://github.com/puppetlabs/puppetlabs-accounts
  [puppetlabs-package]: https://github.com/puppetlabs/puppetlabs-package
  [pdksync]: https://github.com/pdksync
  [puppetlabs-accounts-pr-388]: https://github.com/puppetlabs/puppetlabs-accounts/pull/388
  [vollmerk]: https://github.com/vollmerk
  [puppetlabs-kubernetes-pr-530]: https://github.com/puppetlabs/puppetlabs-kubernetes/pull/530
  [peteroruba]: https://github.com/peteroruba
  [puppetlabs-mysql-pr-1427]: https://github.com/puppetlabs/puppetlabs-mysql/pull/1427
  [theq86]: https://github.com/theq86
  [puppetlabs-postgresql-pr-1291]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1291
  [ekohl]: https://github.com/ekohl
  [smortex]: https://github.com/smortex
  [bastelfreak]: https://github.com/bastelfreak
  [puppetlabs-stdlib-pr-1196]: https://github.com/puppetlabs/puppetlabs-stdlib/pull/1196
  [cocker-cc]: https://github.com/cocker-cc
  [pdk-templates-pr-443]: https://github.com/puppetlabs/pdk-templates/pull/443
  [jarretlavallee]: https://github.com/jarretlavallee
  [metadata-json-lint-pr-118]: https://github.com/voxpupuli/metadata-json-lint/pull/118

## Debian 11 Support

We are currently adding support for Debian 11 across our modules and will release them over the next few weeks.

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
