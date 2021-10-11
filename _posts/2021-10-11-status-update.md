---
layout: post
title: "2021-10-11: IAC & DevX Team Status Update"
author: "ia-content"
categories:
  - team
  - status
tags:
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-firewall#1019`][puppetlabs-firewall-pr-1019]: "Bugfix MODULES-11203: error on second apply when uid or gid is specified as a range", thanks to [cmd-ntrf][cmd-ntrf]
- [`puppetlabs-firewall#1018`][puppetlabs-firewall-pr-1018]: "Fedora 34 and iptables-compat fix; properly utilising iptables param.", thanks to [adamboutcher][adamboutcher]
- [`puppetlabs-postgresql#1307`][puppetlabs-postgresql-pr-1307]: "Drop further code for Debian 6 and Ubuntu 10", thanks to [ekohl][ekohl]
- [`puppetlabs-postgresql#1306`][puppetlabs-postgresql-pr-1306]: "MODULES-11201: add service_name for Ubuntu 18.04 and later", thanks to [moritz-makandra][moritz-makandra]
- [`facterdb#197`][facterdb-pr-197]: "Release 1.10.1", thanks to [bastelfreak][bastelfreak]
- [`facterdb#196`][facterdb-pr-196]: "CI: Test if the gem builds", thanks to [bastelfreak][bastelfreak]
- [`facterdb#195`][facterdb-pr-195]: "facter 4.0: Regenerate factsets with legacy facts", thanks to [bastelfreak][bastelfreak]
- [`facterdb#194`][facterdb-pr-194]: "facter 4.1: Regenerate factsets with legacy facts", thanks to [bastelfreak][bastelfreak]
- [`facterdb#193`][facterdb-pr-193]: "facter 4.2: Regenerate factsets with legacy facts", thanks to [bastelfreak][bastelfreak]
- [`facterdb#192`][facterdb-pr-192]: "Remove EoL OSes from Vagrantfile", thanks to [bastelfreak][bastelfreak]
- [`facterdb#191`][facterdb-pr-191]: "get_facts.sh: Collect legacy facts as well", thanks to [bastelfreak][bastelfreak]
- [`facterdb#190`][facterdb-pr-190]: "get_facts.sh: Ignore facter 1.X/2.x", thanks to [bastelfreak][bastelfreak]
- [`dropsonde#13`][dropsonde-pr-13]: "Load Ruby's CA certificates instead of using httpclient defaults", thanks to [Magisus][Magisus]
- [`puppet_litmus#427`][puppet_litmus-pr-427]: "Allow Litmus Functions to accept a target", thanks to [RandomNoun7][RandomNoun7]

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-stdlib`][puppetlabs-stdlib] (`8.1.0`)
- [`puppetlabs-apt`][puppetlabs-apt] (`8.3.0`)

  [puppetlabs-stdlib]: https://github.com/puppetlabs/puppetlabs-stdlib
  [puppetlabs-apt]: https://github.com/puppetlabs/puppetlabs-apt
  [puppetlabs-firewall-pr-1019]: https://github.com/puppetlabs/puppetlabs-firewall/pull/1019
  [cmd-ntrf]: https://github.com/cmd-ntrf
  [puppetlabs-firewall-pr-1018]: https://github.com/puppetlabs/puppetlabs-firewall/pull/1018
  [adamboutcher]: https://github.com/adamboutcher
  [puppetlabs-postgresql-pr-1307]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1307
  [ekohl]: https://github.com/ekohl
  [puppetlabs-postgresql-pr-1306]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1306
  [moritz-makandra]: https://github.com/moritz-makandra
  [facterdb-pr-197]: https://github.com/voxpupuli/facterdb/pull/197
  [bastelfreak]: https://github.com/bastelfreak
  [facterdb-pr-196]: https://github.com/voxpupuli/facterdb/pull/196
  [facterdb-pr-195]: https://github.com/voxpupuli/facterdb/pull/195
  [facterdb-pr-194]: https://github.com/voxpupuli/facterdb/pull/194
  [facterdb-pr-193]: https://github.com/voxpupuli/facterdb/pull/193
  [facterdb-pr-192]: https://github.com/voxpupuli/facterdb/pull/192
  [facterdb-pr-191]: https://github.com/voxpupuli/facterdb/pull/191
  [facterdb-pr-190]: https://github.com/voxpupuli/facterdb/pull/190
  [dropsonde-pr-13]: https://github.com/puppetlabs/dropsonde/pull/13
  [Magisus]: https://github.com/Magisus
  [puppet_litmus-pr-427]: https://github.com/puppetlabs/puppet_litmus/pull/427
  [RandomNoun7]: https://github.com/RandomNoun7

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
