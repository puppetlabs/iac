---
layout: post
title: "2021-07-16: IAC & DevX Team Status Update"
author: "carabasdaniel"
categories:
  - team
  - status
tags:
---

## New Blog Schedule

Hey, folks! Just a very quick news item to let you know that from today forward we'll be moving our blog posts from Friday to Monday, bringing them into line with the rest of our work on Community Days.

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`provision#169`][provision-pr-169]: "Add Vagrant provisioner compatibility for additional distros", thanks to [seanmil][seanmil]
- [`provision#168`][provision-pr-168]: "Add vagrant options", thanks to [seanmil][seanmil]
- [`puppetlabs-firewall#996`][puppetlabs-firewall-pr-996]: "fix: parsing random_fully in ip6tables", thanks to [scoiatael][scoiatael]
- [`puppetlabs-haproxy#489`][puppetlabs-haproxy-pr-489]: "allow type 'default-server' for balancermember", thanks to [trefzer][trefzer]
- [`puppetlabs-haproxy#487`][puppetlabs-haproxy-pr-487]: "Use Puppet-Datatype Sensitive", thanks to [cocker-cc][cocker-cc]
- [`puppetlabs-kubernetes#527`][puppetlabs-kubernetes-pr-527]: "Add ttl_duration to README", thanks to [danifr][danifr]
- [`puppetlabs-kubernetes#526`][puppetlabs-kubernetes-pr-526]: "Change default runc version to 1.0.0", thanks to [danifr][danifr]
- [`puppetlabs-kubernetes#511`][puppetlabs-kubernetes-pr-511]: "Support both standard Calico and Calico Tigera", thanks to [treydock][treydock]
- [`puppetlabs-mysql#1415`][puppetlabs-mysql-pr-1415]: "Fix mysql_user parameters update on modern MySQL", thanks to [weastur][weastur]
- [`puppetlabs-mysql#1414`][puppetlabs-mysql-pr-1414]: "(IAC-1677) Fix issue with deprecated rspec", thanks to [ghoneycutt][ghoneycutt]
- [`puppetlabs-mysql#1409`][puppetlabs-mysql-pr-1409]: "Deprecate mysql::server::mysqltuner and show it as an example", thanks to [ghoneycutt][ghoneycutt]
- [`puppetlabs-mysql#1408`][puppetlabs-mysql-pr-1408]: "Deprecate mysql::server::monitor and show as an example", thanks to [ghoneycutt][ghoneycutt]
- [`puppetlabs-mysql#1406`][puppetlabs-mysql-pr-1406]: "Remove EOL platforms Debian 8 and Ubuntu 14.04", thanks to [ghoneycutt][ghoneycutt] and the following people who helped get it over the line ([alexjfisher][alexjfisher])
- [`puppetlabs-mysql#1405`][puppetlabs-mysql-pr-1405]: "(MODULES-11115) add Rocky Linux 8 compatibility", thanks to [vchepkov][vchepkov] and the following people who helped get it over the line ([ghoneycutt][ghoneycutt])
- [`puppetlabs-stdlib#1193`][puppetlabs-stdlib-pr-1193]: "(MAINT) Remove testing logic for Puppet 4.5", thanks to [b4ldr][b4ldr]
- [`puppetlabs-stdlib#1192`][puppetlabs-stdlib-pr-1192]: "Stdlib::Http::Method: Add new type for http methods", thanks to [b4ldr][b4ldr]
- [`pdk-templates#442`][pdk-templates-pr-442]: "Set `skip_branch_with_pr` to true by default in appveyor.yml template", thanks to [TraGicCode][TraGicCode]

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-haproxy`][puppetlabs-haproxy] (`6.1.0`)
- [`puppetlabs-mysql`][puppetlabs-mysql] (`11.1.0`)

  [puppetlabs-haproxy]: https://github.com/puppetlabs/puppetlabs-haproxy
  [puppetlabs-mysql]: http://github.com/puppetlabs/puppetlabs-mysql
  [provision-pr-169]: https://github.com/puppetlabs/provision/pull/169
  [seanmil]: https://github.com/seanmil
  [provision-pr-168]: https://github.com/puppetlabs/provision/pull/168
  [puppetlabs-firewall-pr-996]: https://github.com/puppetlabs/puppetlabs-firewall/pull/996
  [scoiatael]: https://github.com/scoiatael
  [puppetlabs-haproxy-pr-489]: https://github.com/puppetlabs/puppetlabs-haproxy/pull/489
  [trefzer]: https://github.com/trefzer
  [puppetlabs-haproxy-pr-487]: https://github.com/puppetlabs/puppetlabs-haproxy/pull/487
  [cocker-cc]: https://github.com/cocker-cc
  [puppetlabs-kubernetes-pr-527]: https://github.com/puppetlabs/puppetlabs-kubernetes/pull/527
  [danifr]: https://github.com/danifr
  [puppetlabs-kubernetes-pr-526]: https://github.com/puppetlabs/puppetlabs-kubernetes/pull/526
  [puppetlabs-kubernetes-pr-511]: https://github.com/puppetlabs/puppetlabs-kubernetes/pull/511
  [treydock]: https://github.com/treydock
  [puppetlabs-mysql-pr-1415]: https://github.com/puppetlabs/puppetlabs-mysql/pull/1415
  [weastur]: https://github.com/weastur
  [puppetlabs-mysql-pr-1414]: https://github.com/puppetlabs/puppetlabs-mysql/pull/1414
  [ghoneycutt]: https://github.com/ghoneycutt
  [puppetlabs-mysql-pr-1409]: https://github.com/puppetlabs/puppetlabs-mysql/pull/1409
  [puppetlabs-mysql-pr-1408]: https://github.com/puppetlabs/puppetlabs-mysql/pull/1408
  [puppetlabs-mysql-pr-1406]: https://github.com/puppetlabs/puppetlabs-mysql/pull/1406
  [alexjfisher]: https://github.com/alexjfisher
  [puppetlabs-mysql-pr-1405]: https://github.com/puppetlabs/puppetlabs-mysql/pull/1405
  [vchepkov]: https://github.com/vchepkov
  [puppetlabs-stdlib-pr-1193]: https://github.com/puppetlabs/puppetlabs-stdlib/pull/1193
  [b4ldr]: https://github.com/b4ldr
  [puppetlabs-stdlib-pr-1192]: https://github.com/puppetlabs/puppetlabs-stdlib/pull/1192
  [pdk-templates-pr-442]: https://github.com/puppetlabs/pdk-templates/pull/442
  [TraGicCode]: https://github.com/TraGicCode

## Other Work

## Tomcat's week

This week we focused on the Tomcat module; as tomcat7 is EOL, we've made the necessary changes to solve the issues coming with the removal of it. Also, we worked at a feature which allows you to remove webapps and a PR for tomcat7 removal was opened.

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
