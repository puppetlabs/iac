---
layout: post
title: "2021-01-08: IAC Team Status Update"
author: pmcmaw
categories:
  - team
  - status
tags:
  - community
  - releases
  - dsc
  - windows
  - cloud-ci
  - puppet-module-gem
  - rubocop
  - infrastructure
  - networking
  - puppetize
  - triage
---

## Happy New Year!

On behalf whole IAC team we would like to take the opportunity to wish all readers a Happy New Year! We hope you all had a great Christmas. The team took the opportunity enjoy the holidays, recharge our batteries and are now ready to tackle 2021 head on.

![2021]({% link /assets/2020-01-08-status-update/2021.jpg %})

## Happy New TP!

TP Honey has returned to the IAC team. [TP][TP] has been with Puppet for quite a while and has worked on multiple teams. This week we see him return to the IAC team to lend some expertise. [TP][TP] specialises in all things modules and has been a leader in the development of [litmus][litmus]. We are so delighted to have him onboard with us and you will see him around a lot more. You may recognise [TP][TP] as he has done some pretty cool Puppetize talks. Check out one of my favourites called [Litmus and PDK][litmus_and_pdk].

## Happy New Network (Modules)

2021 is going to see the IAC Team invest in more work with our networking modules. This will begin with the Cisco IOS module with the aim to increase the amount of device support and also improve the testing with a potentially very interesting project - stay tuned!

## Our first triage Monday of 2021

Half of the team were on PTO, however the remainder of the team powered through and as a result processed a total of 15 PRs between them on both our tooling and module repos. Such a positive start to the year.

## Migration of our modules to GCP

The majority of our modules have now been migrated to GCP. To check the status of our modules you can see them on our [community management page][community_management]. Any module that does not have a status is yet to be migrated although it is worthwhile noting, the outstanding modules are our most complex modules.

Currently our module status report is showing 96% passing, all of the 4% of failures are being tracked or worked on so we are constantly working on improving this.

## Update from our intern

Check out Dishas journey during the first week of 2021 [here](https://puppetlabs.github.io/iac/docs/life_of_intern.html).

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`provision#152`][provision-pr-152]: "(CISC-973) Handle vars in gcp provisioner", thanks to [HelenCampbell][HelenCampbell]
- [`provision#149`][provision-pr-149]: "README.md: update link to Litmus documentation; spelling corrections", thanks to [kenyon][kenyon]
- [`puppetlabs-accounts#340`][puppetlabs-accounts-pr-340]: "(MODULES-10867) Ensure ssh key name is unique based on type, content and description", thanks to [mdklapwijk][mdklapwijk]
- [`puppetlabs-apache#2093`][puppetlabs-apache-pr-2093]: "Add ssl_user_name vhost parameter", thanks to [bodgit][bodgit]
- [`puppetlabs-mysql#1348`][puppetlabs-mysql-pr-1348]: "Repair check of logbindir", thanks to [qha][qha] and the following people who helped get it over the line ([gnif][gnif])
- [`puppetlabs-postgresql#1214`][puppetlabs-postgresql-pr-1214]: "Clean up definition of pg_hba rules", thanks to [blackknight36][blackknight36]
- [`puppetlabs-scheduled_task#175`][puppetlabs-scheduled_task-pr-175]: "(MODULES-10893) Fix Last Day Of Month Trigger", thanks to [RandomNoun7][RandomNoun7]
- [`facterdb#166`][facterdb-pr-166]: "Drop EOL Ruby version from CI matrix", thanks to [bastelfreak][bastelfreak]
- [`facterdb#165`][facterdb-pr-165]: "facts_spec: Pathname class is missing", thanks to [lelutin][lelutin] and the following people who helped get it over the line ([mcanevet][mcanevet])
- [`facterdb#163`][facterdb-pr-163]: "release 1.6.0", thanks to [bastelfreak][bastelfreak] and the following people who helped get it over the line ([mcanevet][mcanevet])
- [`facterdb#162`][facterdb-pr-162]: "Archlinux: Update fact sets", thanks to [bastelfreak][bastelfreak]
- [`puppet_litmus#360`][puppet_litmus-pr-360]: "(maint) But will it fail?", thanks to [da-ar][da-ar]

Please swing by our [office hours on Monday](https://puppet.com/community/office-hours/) on Slack if you want to directly contact us about anything module related.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-scheduled_task`][puppetlabs-scheduled_task] (`2.3.1`)
- [`puppetlabs-tagmail`][puppetlabs-tagmail] (`3.5.0`)
- [`puppetlabs-mysql`][puppetlabs-mysql] (`10.9.1`)

  [puppetlabs-scheduled_task]: https://github.com/puppetlabs/puppetlabs-scheduled_task
  [puppetlabs-tagmail]: https://github.com/puppetlabs/puppetlabs-tagmail/
  [provision-pr-152]: https://github.com/puppetlabs/provision/pull/152
  [HelenCampbell]: https://github.com/HelenCampbell
  [provision-pr-149]: https://github.com/puppetlabs/provision/pull/149
  [kenyon]: https://github.com/kenyon
  [puppetlabs-accounts-pr-340]: https://github.com/puppetlabs/puppetlabs-accounts/pull/340
  [mdklapwijk]: https://github.com/mdklapwijk
  [puppetlabs-apache-pr-2093]: https://github.com/puppetlabs/puppetlabs-apache/pull/2093
  [bodgit]: https://github.com/bodgit
  [puppetlabs-mysql-pr-1348]: https://github.com/puppetlabs/puppetlabs-mysql/pull/1348
  [qha]: https://github.com/qha
  [gnif]: https://github.com/gnif
  [puppetlabs-postgresql-pr-1214]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1214
  [blackknight36]: https://github.com/blackknight36
  [puppetlabs-scheduled_task-pr-175]: https://github.com/puppetlabs/puppetlabs-scheduled_task/pull/175
  [RandomNoun7]: https://github.com/RandomNoun7
  [facterdb-pr-166]: https://github.com/camptocamp/facterdb/pull/166
  [bastelfreak]: https://github.com/bastelfreak
  [facterdb-pr-165]: https://github.com/camptocamp/facterdb/pull/165
  [lelutin]: https://github.com/lelutin
  [mcanevet]: https://github.com/mcanevet
  [facterdb-pr-163]: https://github.com/camptocamp/facterdb/pull/163
  [facterdb-pr-162]: https://github.com/camptocamp/facterdb/pull/162
  [puppet_litmus-pr-360]: https://github.com/puppetlabs/puppet_litmus/pull/360
  [da-ar]: https://github.com/da-ar
  [litmus]: https://github.com/puppetlabs/puppet_litmus
  [litmus_and_pdk]: https://www.youtube.com/watch?v=FYfR7ZEGHoE
  [community_management]: https://puppetlabs.github.io/community_management/


  [Adrian]:             https://github.com/adrianiurca
  [Ben]:                https://github.com/binford2k
  [Ciaran]:             https://github.com/sanfrancrisko
  [Daiana]:             https://github.com/daianamezdrea
  [Danny]:              https://github.com/carabasdaniel
  [DavidSchmitt]:       https://github.com/DavidS
  [DavidSwan]:          https://github.com/david22swan
  [Disha]:              https://github.com/Disha-maker
  [Lore]:               https://github.com/lionce
  [Michael]:            https://github.com/michaeltlombardi
  [Paula]:              https://github.com/pmcmaw
  [Sheena]:             https://github.com/sheenaajay
  [Supported Modules]:  https://puppetlabs.github.io/iac/modules/
  [Tools]:              https://puppetlabs.github.io/iac/tools/
  [TP]:                 https://github.com/tphoney