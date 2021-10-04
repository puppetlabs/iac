---
layout: post
title: "2021-10-04: IAC & DevX Team Status Update"
author: "ia-content"
categories:
  - team
  - status
tags:
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-apache#2195`][puppetlabs-apache-pr-2195]: "Allow `docroot` with `mod_vhost_alias` `virtual_docroot`", thanks to [yakatz][yakatz]
- [`puppetlabs-apache#2191`][puppetlabs-apache-pr-2191]: "add double quote on scope parameter", thanks to [aba-rechsteiner][aba-rechsteiner]
- [`puppetlabs-apt#1007`][puppetlabs-apt-pr-1007]: "(MODULES-11173) Add per-host overrides for apt::proxy", thanks to [maturnbull][maturnbull]
- [`puppetlabs-chocolatey#269`][puppetlabs-chocolatey-pr-269]: "add support for version range", thanks to [rico89][rico89]
- [`puppetlabs-docker#774`][puppetlabs-docker-pr-774]: "Prefer timeout to time_limit for Facter::Core::Execution", thanks to [smortex][smortex]
- [`puppetlabs-firewall#1019`][puppetlabs-firewall-pr-1019]: "Bugfix MODULES-11203: error on second apply when uid or gid is specified as a range", thanks to [cmd-ntrf][cmd-ntrf]
- [`puppetlabs-java#488`][puppetlabs-java-pr-488]: "Enabling Rocky Linux for Install", thanks to [pmjensen][pmjensen]
- [`puppetlabs-java_ks#378`][puppetlabs-java_ks-pr-378]: "Fix "password" as Property", thanks to [cocker-cc][cocker-cc]
- [`puppetlabs-postgresql#1307`][puppetlabs-postgresql-pr-1307]: "Drop further code for Debian 6 and Ubuntu 10", thanks to [ekohl][ekohl]
- [`puppetlabs-postgresql#1306`][puppetlabs-postgresql-pr-1306]: "MODULES-11201: add service_name for Ubuntu 18.04 and later", thanks to [moritz-makandra][moritz-makandra]
- [`puppetlabs-postgresql#1299`][puppetlabs-postgresql-pr-1299]: "Inline file contents in the catalog", thanks to [ekohl][ekohl]
- [`puppetlabs-postgresql#1296`][puppetlabs-postgresql-pr-1296]: "Fix changing default encoding", thanks to [smortex][smortex]
- [`puppetlabs-postgresql#1279`][puppetlabs-postgresql-pr-1279]: "Use Puppet-Datatype Sensitive for Passwords", thanks to [cocker-cc][cocker-cc]
- [`puppetlabs-stdlib#1213`][puppetlabs-stdlib-pr-1213]: "stdlib::ensure: Add support for package resource", thanks to [david-caro][david-caro] and the following people who helped get it over the line ([b4ldr][b4ldr])
- [`puppetlabs-stdlib#1195`][puppetlabs-stdlib-pr-1195]: "(MODULES-11126) Replacing URI.escape with URI::DEFAULT_PARSER", thanks to [valleedelisle][valleedelisle] and the following people who helped get it over the line ([karelyatin][karelyatin], [b4ldr][b4ldr])
- [`facterdb#189`][facterdb-pr-189]: "Release 1.10.0", thanks to [bastelfreak][bastelfreak]
- [`facterdb#188`][facterdb-pr-188]: "Ubuntu 18.04/20.04, RedHat 8: Update factsets", thanks to [bastelfreak][bastelfreak]
- [`rspec-puppet-facts#134`][rspec-puppet-facts-pr-134]: "Release 2.0.3", thanks to [bastelfreak][bastelfreak]
- [`rspec-puppet-facts#133`][rspec-puppet-facts-pr-133]: "regenerate puppet_agent_components.json", thanks to [bastelfreak][bastelfreak]
- [`iac#316`][iac-pr-316]: "Bump nokogiri from 1.11.5 to 1.12.5", thanks to [dependabot[bot]][dependabot[bot]]
- [`iac#315`][iac-pr-315]: "Bump jekyll from 4.2.0 to 4.2.1", thanks to [dependabot[bot]][dependabot[bot]]
- [`puppet-module-gems#167`][puppet-module-gems-pr-167]: "(maint) Fix pry dependency issue.", thanks to [BobosilaVictor][BobosilaVictor]
- [`puppet_litmus#427`][puppet_litmus-pr-427]: "Allow Litmus Functions to accept a target", thanks to [RandomNoun7][RandomNoun7]

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-stdlib`][puppetlabs-stdlib] (`8.1.0`)
- [`puppetlabs-apt`][puppetlabs-apt] (`8.3.0`)
- [`puppetlabs-docker`][puppetlabs-docker] (`4.1.2`)
- [`puppetlabs-java`][puppetlabs-java] (`7.2.0`)
- [`puppetlabs-postgresql`][puppetlabs-postgresql] (`7.5.0`)

  [puppetlabs-stdlib]: https://github.com/puppetlabs/puppetlabs-stdlib
  [puppetlabs-apt]: https://github.com/puppetlabs/puppetlabs-apt
  [puppetlabs-docker]: https://github.com/puppetlabs/puppetlabs-docker
  [puppetlabs-java]: https://github.com/puppetlabs/puppetlabs-java
  [puppetlabs-postgresql]: https://github.com/puppetlabs/puppetlabs-postgresql
  [puppetlabs-apache-pr-2195]: https://github.com/puppetlabs/puppetlabs-apache/pull/2195
  [yakatz]: https://github.com/yakatz
  [puppetlabs-apache-pr-2191]: https://github.com/puppetlabs/puppetlabs-apache/pull/2191
  [aba-rechsteiner]: https://github.com/aba-rechsteiner
  [puppetlabs-apt-pr-1007]: https://github.com/puppetlabs/puppetlabs-apt/pull/1007
  [maturnbull]: https://github.com/maturnbull
  [puppetlabs-chocolatey-pr-269]: https://github.com/puppetlabs/puppetlabs-chocolatey/pull/269
  [rico89]: https://github.com/rico89
  [puppetlabs-docker-pr-774]: https://github.com/puppetlabs/puppetlabs-docker/pull/774
  [smortex]: https://github.com/smortex
  [puppetlabs-firewall-pr-1019]: https://github.com/puppetlabs/puppetlabs-firewall/pull/1019
  [cmd-ntrf]: https://github.com/cmd-ntrf
  [puppetlabs-java-pr-488]: https://github.com/puppetlabs/puppetlabs-java/pull/488
  [pmjensen]: https://github.com/pmjensen
  [puppetlabs-java_ks-pr-378]: https://github.com/puppetlabs/puppetlabs-java_ks/pull/378
  [cocker-cc]: https://github.com/cocker-cc
  [puppetlabs-postgresql-pr-1307]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1307
  [ekohl]: https://github.com/ekohl
  [puppetlabs-postgresql-pr-1306]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1306
  [moritz-makandra]: https://github.com/moritz-makandra
  [puppetlabs-postgresql-pr-1299]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1299
  [puppetlabs-postgresql-pr-1296]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1296
  [puppetlabs-postgresql-pr-1279]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1279
  [puppetlabs-stdlib-pr-1213]: https://github.com/puppetlabs/puppetlabs-stdlib/pull/1213
  [david-caro]: https://github.com/david-caro
  [b4ldr]: https://github.com/b4ldr
  [puppetlabs-stdlib-pr-1195]: https://github.com/puppetlabs/puppetlabs-stdlib/pull/1195
  [valleedelisle]: https://github.com/valleedelisle
  [karelyatin]: https://github.com/karelyatin
  [facterdb-pr-189]: https://github.com/voxpupuli/facterdb/pull/189
  [bastelfreak]: https://github.com/bastelfreak
  [facterdb-pr-188]: https://github.com/voxpupuli/facterdb/pull/188
  [rspec-puppet-facts-pr-134]: https://github.com/voxpupuli/rspec-puppet-facts/pull/134
  [rspec-puppet-facts-pr-133]: https://github.com/voxpupuli/rspec-puppet-facts/pull/133
  [iac-pr-316]: https://github.com/puppetlabs/iac/pull/316
  [dependabot[bot]]: https://github.com/apps/dependabot
  [iac-pr-315]: https://github.com/puppetlabs/iac/pull/315
  [puppet-module-gems-pr-167]: https://github.com/puppetlabs/puppet-module-gems/pull/167
  [BobosilaVictor]: https://github.com/BobosilaVictor
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
