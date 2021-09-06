---
layout: post
title: "2021-09-06: IAC & DevX Team Status Update"
author: "ia-content"
categories:
  - team
  - status
tags:
  - debian11
  - litmus
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past 2 weeks:

- [`puppetlabs-apache#2188`][puppetlabs-apache-pr-2188]: "Various spec cleanups", thanks to [ekohl][ekohl]
- [`puppetlabs-apache#2186`][puppetlabs-apache-pr-2186]: "Debian 11: fix typo in `versioncmp()` / set default php to 7.4", thanks to [bastelfreak][bastelfreak]
- [`puppetlabs-apache#2184`][puppetlabs-apache-pr-2184]: "(maint) Allow stdlib 8.0.0", thanks to [smortex][smortex]
- [`puppetlabs-apt#1001`][puppetlabs-apt-pr-1001]: "(maint) Add support for Debian 11", thanks to [smortex][smortex]
- [`puppetlabs-apt#1000`][puppetlabs-apt-pr-1000]: "(main) Allow stdlib 8.0.0", thanks to [smortex][smortex]
- [`puppetlabs-concat#716`][puppetlabs-concat-pr-716]: "(maint) Allow stdlib 8.0.0", thanks to [smortex][smortex] and the following people who helped get it over the line ([bastelfreak][bastelfreak])
- [`puppetlabs-firewall#1010`][puppetlabs-firewall-pr-1010]: "Fix "undefined method `gsub' for nil:NilClass" when changing existing rule UID from absent to any present", thanks to [onyxmaster][onyxmaster]
- [`puppetlabs-firewall#1009`][puppetlabs-firewall-pr-1009]: "(IAC-1739) Fix CI with stdlib 8.0.0", thanks to [smortex][smortex]
- [`puppetlabs-java#493`][puppetlabs-java-pr-493]: "Allow archive 6.x", thanks to [smortex][smortex]
- [`puppetlabs-kubernetes#531`][puppetlabs-kubernetes-pr-531]: "Support Kubernetes 1.22 and kubeadm v1beta3 configurations", thanks to [treydock][treydock]
- [`puppetlabs-ntp#633`][puppetlabs-ntp-pr-633]: "(maint) Allow stdlib 8.0.0", thanks to [smortex][smortex]
- [`puppetlabs-package#265`][puppetlabs-package-pr-265]: "Expose package manager options to task", thanks to [MartyEwings][MartyEwings]
- [`puppetlabs-postgresql#1293`][puppetlabs-postgresql-pr-1293]: "(maint) Allow stdlib 8.0.0", thanks to [smortex][smortex]
- [`puppetlabs-postgresql#1290`][puppetlabs-postgresql-pr-1290]: "drop code for Debian 6/7 and Ubuntu 10.04/12.04", thanks to [evgeni][evgeni] and the following people who helped get it over the line ([ekohl][ekohl])
- [`puppetlabs-registry#254`][puppetlabs-registry-pr-254]: "Add possibility to produce a detailed error message ", thanks to [reidmv][reidmv]
- [`puppetlabs-stdlib#1207`][puppetlabs-stdlib-pr-1207]: "os_version_gte: fix version comparison logic", thanks to [kenyon][kenyon]
- [`puppetlabs-stdlib#1204`][puppetlabs-stdlib-pr-1204]: "max, lstrip: fix deprecated message", thanks to [b4ldr][b4ldr]
- [`puppetlabs-stdlib#1200`][puppetlabs-stdlib-pr-1200]: "New function to_python() / to_ruby()", thanks to [smortex][smortex]
- [`facterdb#186`][facterdb-pr-186]: "Release 1.9.0", thanks to [bastelfreak][bastelfreak]
- [`pdk-templates#453`][pdk-templates-pr-453]: "(GH-327) Fix rubocop "off" & "hardcore" profiles", thanks to [russellshackleford][russellshackleford]
- [`pdk-templates#446`][pdk-templates-pr-446]: "Don't append a tag to image name if one already exists", thanks to [silug][silug]
- [`pdksync#156`][pdksync-pr-156]: "Remove reference to non existent branch", thanks to [attachmentgenie][attachmentgenie]

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## New Module / Gem Releases

The following modules were released over the past 2 weeks:

- [`puppetlabs-stdlib`][puppetlabs-stdlib] (`8.0.0`)
- [`puppetlabs-concat`][puppetlabs-concat] (`7.1.1`)
- [`puppetlabs-ntp`][puppetlabs-ntp] (`9.1.0`)
- [`puppetlabs-apt`][puppetlabs-apt] (`8.2.0`)
- [`puppetlabs-docker`][puppetlabs-docker] (`4.1.1`)
- [`puppetlabs-java`][puppetlabs-java] (`7.1.1`)
- [`puppetlabs-inifile`][puppetlabs-inifile] (`5.2.0`)
- [`puppetlabs-apache`][puppetlabs-apache] (`6.5.1`)
- [`puppetlabs-firewall`][puppetlabs-firewall] (`3.2.0`)
- [`puppetlabs-postgresql`][puppetlabs-postgresql] (`7.4.1`)
- [`puppetlabs-haproxy`][puppetlabs-haproxy] (`6.2.1`)
- [`puppetlabs-mysql`][puppetlabs-mysql] (`12.0.1`)
- [`puppetlabs-java_ks`][puppetlabs-java_ks] (`4.2.0`)
- [`puppetlabs-motd`][puppetlabs-motd] (`6.1.0`)
- [`puppetlabs-tomcat`][puppetlabs-tomcat] (`6.1.0`)
- [`puppetlabs-reboot`][puppetlabs-reboot] (`4.1.0`)
- [`puppetlabs-registry`][puppetlabs-registry] (`4.0.1`)
- [`puppetlabs-accounts`][puppetlabs-accounts] (`7.1.1`)
- [`puppetlabs-kubernetes`][puppetlabs-kubernetes] (`6.3.0`)
- [`puppetlabs-service`][puppetlabs-service] (`2.1.0`)
- [`puppetlabs-puppet_conf`][puppetlabs-puppet_conf] (`1.2.0`)
- [`puppetlabs-tagmail`][puppetlabs-tagmail] (`4.1.0`)
- [`puppetlabs-exec`][puppetlabs-exec] (`2.0.0`)

The following gem was released this week:

- [`puppet_litmus`][puppet_litmus] (`0.29.0`)

  [puppetlabs-stdlib]: https://github.com/puppetlabs/puppetlabs-stdlib
  [puppetlabs-concat]: https://github.com/puppetlabs/puppetlabs-concat
  [puppetlabs-ntp]: https://github.com/puppetlabs/puppetlabs-ntp
  [puppetlabs-apt]: https://github.com/puppetlabs/puppetlabs-apt
  [puppetlabs-docker]: https://github.com/puppetlabs/puppetlabs-docker
  [puppetlabs-java]: https://github.com/puppetlabs/puppetlabs-java
  [puppetlabs-inifile]: https://github.com/puppetlabs/puppetlabs-inifile
  [puppetlabs-apache]: https://github.com/puppetlabs/puppetlabs-apache
  [puppetlabs-firewall]: http://github.com/puppetlabs/puppetlabs-firewall
  [puppetlabs-postgresql]: https://github.com/puppetlabs/puppetlabs-postgresql
  [puppetlabs-haproxy]: https://github.com/puppetlabs/puppetlabs-haproxy
  [puppetlabs-mysql]: http://github.com/puppetlabs/puppetlabs-mysql
  [puppetlabs-java_ks]: https://github.com/puppetlabs/puppetlabs-java_ks
  [puppetlabs-motd]: https://github.com/puppetlabs/puppetlabs-motd
  [puppetlabs-tomcat]: https://github.com/puppetlabs/puppetlabs-tomcat
  [puppetlabs-reboot]: https://github.com/puppetlabs/puppetlabs-reboot
  [puppetlabs-registry]: https://github.com/puppetlabs/puppetlabs-registry
  [puppetlabs-accounts]: https://github.com/puppetlabs/puppetlabs-accounts
  [puppetlabs-kubernetes]: https://github.com/puppetlabs/puppetlabs-kubernetes
  [puppetlabs-service]: https://github.com/puppetlabs/puppetlabs-service
  [puppetlabs-puppet_conf]: https://github.com/puppetlabs/puppetlabs-puppet_conf
  [puppetlabs-tagmail]: https://github.com/puppetlabs/puppetlabs-tagmail/
  [puppetlabs-exec]: https://github.com/puppetlabs/puppetlabs-exec
  [puppetlabs-apache-pr-2188]: https://github.com/puppetlabs/puppetlabs-apache/pull/2188
  [ekohl]: https://github.com/ekohl
  [puppetlabs-apache-pr-2186]: https://github.com/puppetlabs/puppetlabs-apache/pull/2186
  [bastelfreak]: https://github.com/bastelfreak
  [puppetlabs-apache-pr-2184]: https://github.com/puppetlabs/puppetlabs-apache/pull/2184
  [smortex]: https://github.com/smortex
  [puppetlabs-apt-pr-1001]: https://github.com/puppetlabs/puppetlabs-apt/pull/1001
  [puppetlabs-apt-pr-1000]: https://github.com/puppetlabs/puppetlabs-apt/pull/1000
  [puppetlabs-concat-pr-716]: https://github.com/puppetlabs/puppetlabs-concat/pull/716
  [puppetlabs-firewall-pr-1010]: https://github.com/puppetlabs/puppetlabs-firewall/pull/1010
  [onyxmaster]: https://github.com/onyxmaster
  [puppetlabs-firewall-pr-1009]: https://github.com/puppetlabs/puppetlabs-firewall/pull/1009
  [puppetlabs-java-pr-493]: https://github.com/puppetlabs/puppetlabs-java/pull/493
  [puppetlabs-kubernetes-pr-531]: https://github.com/puppetlabs/puppetlabs-kubernetes/pull/531
  [treydock]: https://github.com/treydock
  [puppetlabs-ntp-pr-633]: https://github.com/puppetlabs/puppetlabs-ntp/pull/633
  [puppetlabs-package-pr-265]: https://github.com/puppetlabs/puppetlabs-package/pull/265
  [MartyEwings]: https://github.com/MartyEwings
  [puppetlabs-postgresql-pr-1293]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1293
  [puppetlabs-postgresql-pr-1290]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1290
  [evgeni]: https://github.com/evgeni
  [puppetlabs-registry-pr-254]: https://github.com/puppetlabs/puppetlabs-registry/pull/254
  [reidmv]: https://github.com/reidmv
  [puppetlabs-stdlib-pr-1207]: https://github.com/puppetlabs/puppetlabs-stdlib/pull/1207
  [kenyon]: https://github.com/kenyon
  [puppetlabs-stdlib-pr-1204]: https://github.com/puppetlabs/puppetlabs-stdlib/pull/1204
  [b4ldr]: https://github.com/b4ldr
  [puppetlabs-stdlib-pr-1200]: https://github.com/puppetlabs/puppetlabs-stdlib/pull/1200
  [facterdb-pr-186]: https://github.com/voxpupuli/facterdb/pull/186
  [pdk-templates-pr-453]: https://github.com/puppetlabs/pdk-templates/pull/453
  [russellshackleford]: https://github.com/russellshackleford
  [pdk-templates-pr-446]: https://github.com/puppetlabs/pdk-templates/pull/446
  [silug]: https://github.com/silug
  [pdksync-pr-156]: https://github.com/puppetlabs/pdksync/pull/156
  [attachmentgenie]: https://github.com/attachmentgenie
  [puppet_litmus]: https://github.com/puppetlabs/puppet_litmus

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
