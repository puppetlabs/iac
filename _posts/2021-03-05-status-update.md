---
layout: post
title: "2021-03-05: IAC Team Status Update"
author: sheenaajay
categories:
  - team
  - status
tags:
- community
- releases
- cloud-ci
- puppet5-support-drop
- major-releases
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-acl#231`][puppetlabs-acl-pr-231]: "(maint) Update limitations in README.md", thanks to [luchihoratiu][luchihoratiu]
- [`puppetlabs-docker#725`][puppetlabs-docker-pr-725]: "Make it possible to use pod's network", thanks to [seriv][seriv]
- [`puppetlabs-kubernetes#494`][puppetlabs-kubernetes-pr-494]: "Added information about Hiera YAML Lookup; installing a updated version.", thanks to [bitvijays][bitvijays]
- [`puppetlabs-kubernetes#488`][puppetlabs-kubernetes-pr-488]: "Add note about the kubernetes version format", thanks to [danifr][danifr]
- [`puppetlabs-postgresql#1239`][puppetlabs-postgresql-pr-1239]: "Add DNF module management", thanks to [ekohl][ekohl]
- [`puppetlabs-reboot#280`][puppetlabs-reboot-pr-280]: "(MODULES-10955) More robust handling of reboot-task output", thanks to [fetzerms][fetzerms]
- [`pdk#954`][pdk-pr-954]: "Docs: Install on macOS with brew", thanks to [rwaffen][rwaffen]
- [`pdk-docker#27`][pdk-docker-pr-27]: "(PF-2333) Remove Anubis content from pdk-docker repo", thanks to [nkanderson][nkanderson]
- [`pdk-docker#26`][pdk-docker-pr-26]: "(PF-2333) Remove Anubis image from workflow", thanks to [nkanderson][nkanderson]
- [`pdk-templates#411`][pdk-templates-pr-411]: "Add Puppet 7 tests to .gitlab-ci.yml", thanks to [silug][silug]
- [`pdk-vanagon#277`][pdk-vanagon-pr-277]: "(MAINT) Bump `packaging` dep to at least 0.99.76 to fix MSI signing", thanks to [scotje][scotje]
- [`pdk-vanagon#276`][pdk-vanagon-pr-276]: "(MAINT) Refactor `puppet-forge-api` component into `puppet-versions`", thanks to [scotje][scotje]

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## Supported Module Major Releases

The whole team has been super busy this week working on prepping our modules for major releases.
We have done **34+** major releases on our supported modules with only a few outstanding.
The release includes the removal of Puppet 5, RHEL 5 family and SLES 11 support.
If you are running Puppet 5 please note it is no longer supported and we advise you to upgrade to Puppet 7 as soon as you can.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-stdlib`][puppetlabs-stdlib] (`7.0.0`)
- [`puppetlabs-concat`][puppetlabs-concat] (`7.0.0`)
- [`puppetlabs-ntp`][puppetlabs-ntp] (`9.0.0`)
- [`puppetlabs-apt`][puppetlabs-apt] (`8.0.0`)
- [`puppetlabs-vcsrepo`][puppetlabs-vcsrepo] (`4.0.0`)
- [`puppetlabs-docker`][puppetlabs-docker] (`4.0.0`)
- [`puppetlabs-java`][puppetlabs-java] (`7.0.0`)
- [`puppetlabs-powershell`][puppetlabs-powershell] (`5.0.0`)
- [`puppetlabs-inifile`][puppetlabs-inifile] (`5.0.0`)
- [`puppetlabs-apache`][puppetlabs-apache] (`6.0.0`)
- [`puppetlabs-firewall`][puppetlabs-firewall] (`3.0.0`)
- [`puppetlabs-postgresql`][puppetlabs-postgresql] (`7.0.0`)
- [`puppetlabs-haproxy`][puppetlabs-haproxy] (`5.0.0`)
- [`puppetlabs-mysql`][puppetlabs-mysql] (`11.0.0`)
- [`puppetlabs-java_ks`][puppetlabs-java_ks] (`4.0.0`)
- [`puppetlabs-motd`][puppetlabs-motd] (`5.0.0`)
- [`puppetlabs-tomcat`][puppetlabs-tomcat] (`5.0.0`)
- [`puppetlabs-reboot`][puppetlabs-reboot] (`4.0.0`)
- [`puppetlabs-registry`][puppetlabs-registry] (`4.0.0`)
- [`puppetlabs-chocolatey`][puppetlabs-chocolatey] (`6.0.0`)
- [`puppetlabs-acl`][puppetlabs-acl] (`4.0.0`)
- [`puppetlabs-accounts`][puppetlabs-accounts] (`7.0.0`)
- [`puppetlabs-wsus_client`][puppetlabs-wsus_client] (`4.0.0`)
- [`puppetlabs-kubernetes`][puppetlabs-kubernetes] (`6.0.0`)
- [`puppetlabs-scheduled_task`][puppetlabs-scheduled_task] (`3.0.0`)
- [`puppetlabs-iis`][puppetlabs-iis] (`8.0.0`)
- [`puppetlabs-sqlserver`][puppetlabs-sqlserver] (`3.0.0`)
- [`puppetlabs-service`][puppetlabs-service] (`2.0.0`)
- [`puppetlabs-tagmail`][puppetlabs-tagmail] (`4.0.0`)
- [`puppetlabs-puppet_conf`][puppetlabs-puppet_conf] (`1.0.0`)
- [`puppetlabs-package`][puppetlabs-package] (`2.0.0`)
- [`puppetlabs-ibm_installation_manager`][puppetlabs-ibm_installation_manager] (`3.0.0`)
- [`puppetlabs-exec`][puppetlabs-exec] (`1.0.0`)
- [`puppetlabs-satellite_pe_tools`][puppetlabs-satellite_pe_tools] (`4.0.0`)
- [`puppetlabs-facter_task `][puppetlabs-facter_task ] (`1.0.0`)
- [`puppetlabs-rook`][puppetlabs-rook] (`1.0.0`)
- [`pwshlib`][pwshlib] (`0.8.0`)

## Docker bug fix

We did a minor release (`3.14.0`) with a specific bug fix for RedHat 7 and the default docker package (version 1.13.1) that fixes an issue in [puppetlabs-docker][puppetlabs-docker] module with a force rewrite of the /etc/sysconfig/docker-storage file.
The fix disables management of this file and uses the default /etc/sysconfig/docker-storage-setup preventing the conflict described in the [issue][puppetlabs-docker-issue-518].
More details available here [MODULES-10898][MODULES-10898].

## Cloud CI

This week we had the first test use of the automated release workflow and we found a couple of issues that we are currently working on (the pdk nightly image).
We are also preparing a workflow to do the tag and push to forge. Link to the [PR][pdk-templates-pr-408].
K8s module [PR](https://github.com/puppetlabs/puppetlabs-kubernetes/pull/481) is now merged which ports the module to cloud ci.


## Update from our intern

[Disha][Disha] completed her first community reporting PR which excludes the draft PR from modules report generated for the community day.
Link to the [PR][community_management-pr-54].
Disha also completed the ticket [IAC-1197][IAC-1197] after finishing [IAC-1196][IAC-1196], this second ticket was looking into the same principles as the first one, except the drafts were to be excluded from the tools report on the community management tool.
Link to the [PR][community_management-pr-62].

## See you next week!

This is all for this week, have a great weekend and be ready for the next week updates!

  [puppetlabs-stdlib]: https://github.com/puppetlabs/puppetlabs-stdlib
  [puppetlabs-concat]: https://github.com/puppetlabs/puppetlabs-concat
  [puppetlabs-ntp]: https://github.com/puppetlabs/puppetlabs-ntp
  [puppetlabs-apt]: https://github.com/puppetlabs/puppetlabs-apt
  [puppetlabs-vcsrepo]: https://github.com/puppetlabs/puppetlabs-vcsrepo
  [puppetlabs-docker]: https://github.com/puppetlabs/puppetlabs-docker
  [puppetlabs-java]: https://github.com/puppetlabs/puppetlabs-java
  [puppetlabs-powershell]: https://github.com/puppetlabs/puppetlabs-powershell
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
  [puppetlabs-chocolatey]: https://github.com/puppetlabs/puppetlabs-chocolatey
  [puppetlabs-acl]: https://github.com/puppetlabs/puppetlabs-acl
  [puppetlabs-accounts]: https://github.com/puppetlabs/puppetlabs-accounts
  [puppetlabs-wsus_client]: https://github.com/puppetlabs/puppetlabs-wsus_client
  [puppetlabs-kubernetes]: https://github.com/puppetlabs/puppetlabs-kubernetes
  [puppetlabs-scheduled_task]: https://github.com/puppetlabs/puppetlabs-scheduled_task
  [puppetlabs-iis]: https://github.com/puppetlabs/puppetlabs-iis
  [puppetlabs-sqlserver]: https://github.com/puppetlabs/puppetlabs-sqlserver
  [puppetlabs-service]: https://github.com/puppetlabs/puppetlabs-service
  [puppetlabs-tagmail]: https://github.com/puppetlabs/puppetlabs-tagmail/
  [puppetlabs-puppet_conf]: https://github.com/puppetlabs/puppetlabs-puppet_conf
  [puppetlabs-package]: https://github.com/puppetlabs/puppetlabs-package
  [puppetlabs-ibm_installation_manager]: https://github.com/puppetlabs/puppetlabs-ibm_installation_manager
  [puppetlabs-exec]: https://github.com/puppetlabs/puppetlabs-exec
  [puppetlabs-satellite_pe_tools]: https://github.com/puppetlabs/puppetlabs-satellite_pe_tools
  [puppetlabs-facter_task]: https://github.com/puppetlabs/puppetlabs-facter_task
  [puppetlabs-rook]: https://github.com/puppetlabs/puppetlabs-rook
  [pwshlib]: https://github.com/puppetlabs/ruby-pwsh/
  [puppetlabs-acl-pr-231]: https://github.com/puppetlabs/puppetlabs-acl/pull/231
  [luchihoratiu]: https://github.com/luchihoratiu
  [puppetlabs-docker-pr-725]: https://github.com/puppetlabs/puppetlabs-docker/pull/725
  [seriv]: https://github.com/seriv
  [puppetlabs-kubernetes-pr-494]: https://github.com/puppetlabs/puppetlabs-kubernetes/pull/494
  [bitvijays]: https://github.com/bitvijays
  [puppetlabs-kubernetes-pr-488]: https://github.com/puppetlabs/puppetlabs-kubernetes/pull/488
  [danifr]: https://github.com/danifr
  [puppetlabs-postgresql-pr-1239]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1239
  [ekohl]: https://github.com/ekohl
  [Zak-Kent]: https://github.com/Zak-Kent
  [puppetlabs-reboot-pr-280]: https://github.com/puppetlabs/puppetlabs-reboot/pull/280
  [fetzerms]: https://github.com/fetzerms
  [pdk-pr-954]: https://github.com/puppetlabs/pdk/pull/954
  [rwaffen]: https://github.com/rwaffen
  [pdk-docker-pr-27]: https://github.com/puppetlabs/pdk-docker/pull/27
  [nkanderson]: https://github.com/nkanderson
  [pdk-docker-pr-26]: https://github.com/puppetlabs/pdk-docker/pull/26
  [pdk-templates-pr-411]: https://github.com/puppetlabs/pdk-templates/pull/411
  [silug]: https://github.com/silug
  [pdk-vanagon-pr-277]: https://github.com/puppetlabs/pdk-vanagon/pull/277
  [scotje]: https://github.com/scotje
  [pdk-vanagon-pr-276]: https://github.com/puppetlabs/pdk-vanagon/pull/276
  [MODULES-10898]: https://tickets.puppetlabs.com/browse/MODULES-10898
  [pdk-templates-pr-408]: https://github.com/puppetlabs/pdk-templates/pull/408
  [community_management-pr-54]: https://github.com/puppetlabs/community_management/pull/54
  [puppetlabs-docker-issue-518]: https://github.com/puppetlabs/puppetlabs-docker/issues/518
  [community_management-pr-62]: https://github.com/puppetlabs/community_management/pull/62
  [IAC-1196]: https://tickets.puppetlabs.com/browse/IAC-1196
  [IAC-1197]: https://tickets.puppetlabs.com/browse/IAC-1197

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
