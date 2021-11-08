---
layout: post
title: "2021-11-08: IAC & DevX Team Status Update"
author: "daianamezdrea"
categories:
  - team
  - status
tags:
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-apt#1010`][puppetlabs-apt-pr-1010]: "(MODULES-10763) Remove frequency collector", thanks to [LTangaF][LTangaF] and the following people who helped get it over the line ([kenyon][kenyon])
- [`puppetlabs-java_ks#383`][puppetlabs-java_ks-pr-383]: "move honeycomb key", thanks to [LivingInSyn][LivingInSyn]
- [`puppetlabs-java_ks#382`][puppetlabs-java_ks-pr-382]: "change the honeycomb writekey to a github secret", thanks to [LivingInSyn][LivingInSyn]
- [`puppetlabs-postgresql#1298`][puppetlabs-postgresql-pr-1298]: "Support setting default_privileges on all schemas", thanks to [fish-face][fish-face]
- [`puppetlabs-postgresql#1297`][puppetlabs-postgresql-pr-1297]: "Support target_role in default_privileges", thanks to [fish-face][fish-face]
- [`facterdb#209`][facterdb-pr-209]: "Add support for ubuntu 21.10 and 21.04 ", thanks to [hbrown-uiowa][hbrown-uiowa]
- [`facterdb#207`][facterdb-pr-207]: "Add Almalinux facts", thanks to [hbrown-uiowa][hbrown-uiowa]
- [`facterdb#206`][facterdb-pr-206]: "Add sys-filesystem so that mountpoints fact resolves", thanks to [hbrown-uiowa][hbrown-uiowa] and the following people who helped get it over the line ([bastelfreak][bastelfreak])
- [`facterdb#205`][facterdb-pr-205]: "Add facter 4.x facts for RockyLinux 8", thanks to [hbrown-uiowa][hbrown-uiowa]
- [`facterdb#204`][facterdb-pr-204]: "Release 1.11.0", thanks to [bastelfreak][bastelfreak]
- [`facterdb#203`][facterdb-pr-203]: "Generate OL/RHEL/SL facts", thanks to [bastelfreak][bastelfreak]
- [`facterdb#202`][facterdb-pr-202]: "(#200) Updated get_facts.sh and several os facts missing mountpoints", thanks to [michael-riddle][michael-riddle] and the following people who helped get it over the line ([bastelfreak][bastelfreak])
- [`facterdb#201`][facterdb-pr-201]: "Add Facts for Ubuntu 21.04 x86-64, facter 3.14", thanks to [towo][towo]
- [`facterdb#199`][facterdb-pr-199]: "Add Fedora 33 and 34 factsets", thanks to [hbrown-uiowa][hbrown-uiowa]
- [`facterdb#198`][facterdb-pr-198]: "Add Fedora 32 facts", thanks to [hbrown-uiowa][hbrown-uiowa]
- [`dropsonde#14`][dropsonde-pr-14]: "(SERVER-3079) Allow overriding Puppet's base settings", thanks to [Magisus][Magisus]
- [`dropsonde#13`][dropsonde-pr-13]: "Load Ruby's CA certificates instead of using httpclient defaults", thanks to [Magisus][Magisus]

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-java`][puppetlabs-java] (`7.3.0`)
- [`puppetlabs-apache`][puppetlabs-apache] (`7.0.0`)

  [puppetlabs-java]: https://github.com/puppetlabs/puppetlabs-java
  [puppetlabs-apache]: https://github.com/puppetlabs/puppetlabs-apache
  [puppetlabs-apt-pr-1010]: https://github.com/puppetlabs/puppetlabs-apt/pull/1010
  [LTangaF]: https://github.com/LTangaF
  [kenyon]: https://github.com/kenyon
  [puppetlabs-java_ks-pr-383]: https://github.com/puppetlabs/puppetlabs-java_ks/pull/383
  [LivingInSyn]: https://github.com/LivingInSyn
  [puppetlabs-java_ks-pr-382]: https://github.com/puppetlabs/puppetlabs-java_ks/pull/382
  [puppetlabs-postgresql-pr-1298]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1298
  [fish-face]: https://github.com/fish-face
  [puppetlabs-postgresql-pr-1297]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1297
  [facterdb-pr-209]: https://github.com/voxpupuli/facterdb/pull/209
  [hbrown-uiowa]: https://github.com/hbrown-uiowa
  [facterdb-pr-207]: https://github.com/voxpupuli/facterdb/pull/207
  [facterdb-pr-206]: https://github.com/voxpupuli/facterdb/pull/206
  [bastelfreak]: https://github.com/bastelfreak
  [facterdb-pr-205]: https://github.com/voxpupuli/facterdb/pull/205
  [facterdb-pr-204]: https://github.com/voxpupuli/facterdb/pull/204
  [facterdb-pr-203]: https://github.com/voxpupuli/facterdb/pull/203
  [facterdb-pr-202]: https://github.com/voxpupuli/facterdb/pull/202
  [michael-riddle]: https://github.com/michael-riddle
  [facterdb-pr-201]: https://github.com/voxpupuli/facterdb/pull/201
  [towo]: https://github.com/towo
  [facterdb-pr-199]: https://github.com/voxpupuli/facterdb/pull/199
  [facterdb-pr-198]: https://github.com/voxpupuli/facterdb/pull/198
  [dropsonde-pr-14]: https://github.com/puppetlabs/dropsonde/pull/14
  [Magisus]: https://github.com/Magisus
  [dropsonde-pr-13]: https://github.com/puppetlabs/dropsonde/pull/13

## Other Work

<!-- check https://tickets.puppetlabs.com/secure/RapidBoard.jspa?rapidView=1176&quickFilter=8745 for other tickets closed out this week that should be mentioned here -->

  [Adrian]:             https://github.com/adrianiurca
  [Ben]:                https://github.com/binford2k
  [Ciaran]:             https://github.com/sanfrancrisko
  [Daiana]:             https://github.com/daianamezdrea
  [Danny]:              https://github.com/carabasdaniel
  [DavidArmstrong]:     https://github.com/da-ar
  [DavidSwan]:          https://github.com/david22swan
  [Lore]:               https://github.com/lionce
  [Michael]:            https://github.com/michaeltlombardi
  [Paula]:              https://github.com/pmcmaw
  [Peter]:              https://github.com/petergmurphy
  [Sheena]:             https://github.com/sheenaajay
  [Supported Modules]:  https://puppetlabs.github.io/iac/modules/
  [Tools]:              https://puppetlabs.github.io/iac/tools/
