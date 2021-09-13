---
layout: post
title: "2021-09-13: IAC & DevX Team Status Update"
author: "ia-content"
categories:
  - team
  - status
tags:
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-apache#2193`][puppetlabs-apache-pr-2193]: "Restore Ubuntu 14.04 support in suphp", thanks to [ekohl][ekohl]
- [`puppetlabs-apache#2189`][puppetlabs-apache-pr-2189]: "Drop Debian < 8 and Ubuntu < 14.04 code", thanks to [ekohl][ekohl]
- [`puppetlabs-apt#999`][puppetlabs-apt-pr-999]: "(maint) Set DEBIAN_FRONTEND=noninteractive on upgrade", thanks to [smortex][smortex]
- [`puppetlabs-docker#773`][puppetlabs-docker-pr-773]: "Fix facts gathering", thanks to [smortex][smortex]
- [`puppetlabs-firewall#1010`][puppetlabs-firewall-pr-1010]: "Fix "undefined method `gsub' for nil:NilClass" when changing existing rule UID from absent to any present", thanks to [onyxmaster][onyxmaster]
- [`puppetlabs-firewall#1006`][puppetlabs-firewall-pr-1006]: "Replace travis link in README.md with GHA", thanks to [bastelfreak][bastelfreak]
- [`puppetlabs-haproxy#498`][puppetlabs-haproxy-pr-498]: "Adding chroot_dir_manage parameter.", thanks to [Tamerz][Tamerz]
- [`puppetlabs-java#493`][puppetlabs-java-pr-493]: "Allow archive 6.x", thanks to [smortex][smortex]
- [`puppetlabs-package#265`][puppetlabs-package-pr-265]: "Expose package manager options to task", thanks to [MartyEwings][MartyEwings]
- [`puppetlabs-stdlib#1209`][puppetlabs-stdlib-pr-1209]: "Added to_toml function", thanks to [nmaludy][nmaludy]
- [`pdk-templates#451`][pdk-templates-pr-451]: "Remove env from GitHub template if all sub-keys are unset", thanks to [thebeanogamer][thebeanogamer]
- [`pdk-templates#446`][pdk-templates-pr-446]: "Don't append a tag to image name if one already exists", thanks to [silug][silug]
- [`pdksync#156`][pdksync-pr-156]: "Remove reference to non existent branch", thanks to [attachmentgenie][attachmentgenie]

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-firewall`][puppetlabs-firewall] (`3.2.0`)
- [`puppetlabs-kubernetes`][puppetlabs-kubernetes] (`6.3.0`)

  [puppetlabs-firewall]: http://github.com/puppetlabs/puppetlabs-firewall
  [puppetlabs-kubernetes]: https://github.com/puppetlabs/puppetlabs-kubernetes
  [puppetlabs-apache-pr-2193]: https://github.com/puppetlabs/puppetlabs-apache/pull/2193
  [ekohl]: https://github.com/ekohl
  [puppetlabs-apache-pr-2189]: https://github.com/puppetlabs/puppetlabs-apache/pull/2189
  [puppetlabs-apt-pr-999]: https://github.com/puppetlabs/puppetlabs-apt/pull/999
  [smortex]: https://github.com/smortex
  [puppetlabs-docker-pr-773]: https://github.com/puppetlabs/puppetlabs-docker/pull/773
  [puppetlabs-firewall-pr-1010]: https://github.com/puppetlabs/puppetlabs-firewall/pull/1010
  [onyxmaster]: https://github.com/onyxmaster
  [puppetlabs-firewall-pr-1006]: https://github.com/puppetlabs/puppetlabs-firewall/pull/1006
  [bastelfreak]: https://github.com/bastelfreak
  [puppetlabs-haproxy-pr-498]: https://github.com/puppetlabs/puppetlabs-haproxy/pull/498
  [Tamerz]: https://github.com/Tamerz
  [puppetlabs-java-pr-493]: https://github.com/puppetlabs/puppetlabs-java/pull/493
  [puppetlabs-package-pr-265]: https://github.com/puppetlabs/puppetlabs-package/pull/265
  [MartyEwings]: https://github.com/MartyEwings
  [puppetlabs-stdlib-pr-1209]: https://github.com/puppetlabs/puppetlabs-stdlib/pull/1209
  [nmaludy]: https://github.com/nmaludy
  [pdk-templates-pr-451]: https://github.com/puppetlabs/pdk-templates/pull/451
  [thebeanogamer]: https://github.com/thebeanogamer
  [pdk-templates-pr-446]: https://github.com/puppetlabs/pdk-templates/pull/446
  [silug]: https://github.com/silug
  [pdksync-pr-156]: https://github.com/puppetlabs/pdksync/pull/156
  [attachmentgenie]: https://github.com/attachmentgenie

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
