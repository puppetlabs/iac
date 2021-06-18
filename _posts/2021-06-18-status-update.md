---
layout: post
title: "2021-06-18: IAC & DevX Team Status Update"
author: @peculiarism
categories:
  - team
  - status
tags:
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-docker#754`][puppetlabs-docker-pr-754]: "Fix docker::volumes hiera example", thanks to [pskopnik][pskopnik]
- [`puppetlabs-postgresql#1276`][puppetlabs-postgresql-pr-1276]: "(MODULES-8700) Autorequire the service in postgresql_psql", thanks to [ekohl][ekohl]
- [`puppetlabs-postgresql#1267`][puppetlabs-postgresql-pr-1267]: "MODULES-11049 - Implement default privileges changes", thanks to [mtancoigne][mtancoigne]
- [`puppetlabs-scheduled_task#188`][puppetlabs-scheduled_task-pr-188]: "(MODULES-10986) Fix gMSA username support", thanks to [sigv][sigv] and the following people who helped get it over the line ([JohnEricson][JohnEricson])
- [`puppetlabs-stdlib#1191`][puppetlabs-stdlib-pr-1191]: "(MODULES-11099) Make merge parameter data types actually backwards compatible", thanks to [SimonPe][SimonPe]
- [`puppet-modulebuilder#44`][puppet-modulebuilder-pr-44]: "Add license attribute to gemspec", thanks to [bastelfreak][bastelfreak]
- [`puppetlabs_spec_helper#338`][puppetlabs_spec_helper-pr-338]: "Remove beaker integration", thanks to [ekohl][ekohl]

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-scheduled_task`][puppetlabs-scheduled_task] (`3.0.1`)

  [puppetlabs-scheduled_task]: https://github.com/puppetlabs/puppetlabs-scheduled_task
  [puppetlabs-docker-pr-754]: https://github.com/puppetlabs/puppetlabs-docker/pull/754
  [pskopnik]: https://github.com/pskopnik
  [puppetlabs-postgresql-pr-1276]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1276
  [ekohl]: https://github.com/ekohl
  [puppetlabs-postgresql-pr-1267]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1267
  [mtancoigne]: https://github.com/mtancoigne
  [puppetlabs-scheduled_task-pr-188]: https://github.com/puppetlabs/puppetlabs-scheduled_task/pull/188
  [sigv]: https://github.com/sigv
  [JohnEricson]: https://github.com/JohnEricson
  [puppetlabs-stdlib-pr-1191]: https://github.com/puppetlabs/puppetlabs-stdlib/pull/1191
  [SimonPe]: https://github.com/SimonPe
  [puppet-modulebuilder-pr-44]: https://github.com/puppetlabs/puppet-modulebuilder/pull/44
  [bastelfreak]: https://github.com/bastelfreak
  [puppetlabs_spec_helper-pr-338]: https://github.com/puppetlabs/puppetlabs_spec_helper/pull/338
  
## DevX Team Update
This week, we've been busy preparing for the release of version `2.1.1` of PDK.
We're hoping to have this delivered early next week - full details will follow, but, there's a number of fixes so we're moving as fast as we can to get this landed soon.
One fix to call out is [GH-1083](https://github.com/puppetlabs/pdk/issues/1083), which was originally brought to our attention by [Michael][Michael] and [David][DavidSwan].
There's a number of other folks awaiting this fix, so thanks to you both for diagnosing and testing the fix!
Also, thanks to [Glenn](https://github.com/glennsarti) for his help in the early stages of RCA'ing it too.
In other news, we've been planning and discussing some of the next big pieces of functionality we want to get in to next release of the PCT EA programme (`0.2.0`).
The sort of things you can expect is template installation and formalized template structure.
Another area is addition of telemetry data that will help us determine how the app is being used and provide us with another feedback vector on top of the great [Github Discussions](https://github.com/puppetlabs/pdkgo/discussions) we've had so far.
If you want to get involved in the PCT Early Access programme, check [this blog post out]( {% link _posts/2021-06-04-pct-early-release.md %})

## Community Day

We had a very busy community day this week with the team processing **45** tickets across our supported modules and tooling. It was also great to see our Trusted Contributor helping support the community alongside the IAC team.

## Catch some of our team members live, now on Twitch!
Looking to deepen your knowledge of the PDK or how Puppet builds and deploys Windows DSC modules? Look no further! Our Director of Community, [Lauren Lee](https://twitter.com/LoLoCoding), is now live streaming on Twitch with some of our team members, and you can keep up to date on the [Puppetize Twitch Channel](https://www.twitch.tv/puppetize). 

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
