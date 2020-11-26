---
layout: post
title: "2020-11-27: IAC Team Status Update"
author: carabasdaniel
categories:
  - team
  - litmus
  - status
tags:
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-accounts#338`][puppetlabs-accounts-pr-338]: "MODULES-10862 add support for authorized_keys file mode", thanks to [simondeziel][simondeziel]
- [`puppetlabs-apache#2089`][puppetlabs-apache-pr-2089]: "Add cas_cookie_path in vhosts", thanks to [yakatz][yakatz]
- [`puppetlabs-apache#2081`][puppetlabs-apache-pr-2081]: "Improve SSLVerify options", thanks to [bovy89][bovy89]
- [`puppetlabs-apt#953`][puppetlabs-apt-pr-953]: "Make auth.conf contents Sensitive", thanks to [suchpuppet][suchpuppet]
- [`puppetlabs-haproxy#449`][puppetlabs-haproxy-pr-449]: "(bugfix) backend: dont log warnings if not necessary", thanks to [bastelfreak][bastelfreak]
- [`puppetlabs-kubernetes#447`][puppetlabs-kubernetes-pr-447]: "Add configuration options for conntrack settings in v1beta1 and v1beta2", thanks to [Wiston999][Wiston999]
- [`puppetlabs-ntp#590`][puppetlabs-ntp-pr-590]: "(MAINT) Make mode for logfile configurable", thanks to [tmanninger][tmanninger]
- [`puppetlabs-postgresql#1199`][puppetlabs-postgresql-pr-1199]: "Manage postgresql_conf_path file permissions", thanks to [ekohl][ekohl]
- [`puppetlabs-satellite_pe_tools#139`][puppetlabs-satellite_pe_tools-pr-139]: "Update satellite.rb", thanks to [eppini][eppini] and the following people who helped get it over the line ([ekohl][ekohl])
- [`puppetlabs-stdlib#1139`][puppetlabs-stdlib-pr-1139]: "seeded_rand: update funtion to ensure it returns an int not String", thanks to [b4ldr][b4ldr]
- [`puppetlabs-tomcat#415`][puppetlabs-tomcat-pr-415]: "Refactor valve types", thanks to [h-haaks][h-haaks]
- [`pdk#926`][pdk-pr-926]: "(MAINT) Adjust how expected Gemfile.lock is calculated in package tests", thanks to [scotje][scotje]
- [`pdk-vanagon#268`][pdk-vanagon-pr-268]: "(MAINT) Drop Ruby 2.1.9/puppet 4.x from packaging", thanks to [scotje][scotje]
- [`metadata-json-lint#113`][metadata-json-lint-pr-113]: "release 3.0.0", thanks to [bastelfreak][bastelfreak]

## New Module / Gem Releases

The following modules and gem were released this week:

- [`puppetlabs-apache`][puppetlabs-apache] (`5.7.0`)
- [`puppetlabs-haproxy`][puppetlabs-haproxy] (`4.4.0`)
- [`puppetlabs-ibm_installation_manager`][puppetlabs-ibm_installation_manager] (`2.2.1`)
- [`puppet_litmus`][puppet-litmus] (`0.20.0`)

## Triage day

This week we had another very productive Triage day:
- 27 community PR processed by the team (2 tooling 24 modules) 
- released two modules and Puppet Litmus

## Puppet Litmus

This week we have done two releases of the Puppet Litmus gem we generally use for our acceptance testing. The first release we finished on Monday included a couple of nice fixes:
- added the possibility to generate a job matrix from the metadata.json of a module for the Github Action workflows we will use with the Cloud CI
- Added a write_file helper 
- Added the option to fileter testcase execution based on tags
- Allowing the acceptance tests to be run as a sudo user

The second release was a bug fix that allows litmus to check connectivity after provisioning and remove some of the debugging output. 
 
For more information on the changes [see the CHANGELOG.md](https://github.com/puppetlabs/puppet_litmus/blob/main/CHANGELOG.md)

## Cloud CI

This week we managed to fix a couple of stability issues with the Cloud CI provisioning and finish a successful run with 100 windows machines. You can see the results [here](https://github.com/puppetlabs/puppetlabs-testing/actions/runs/383528880).

We have ported accross a couple more modules this week: [`puppetlabs-stdlib`][puppetlabs-stdlib], [`puppetlabs-registry`][puppetlabs-registry] and [`puppetlabs-package`][puppetlabs-package] but we also encountered another interesting issue with puppetlabs-postgresql that we are currently investigating. 

Next week, we will focus a bit on hardening the provision service and start porting over more of the supported modules. 

## Wrap-up

That's it for this week, have a great week-end and stay safe !

  [puppet_litmus]: https://rubygems.org/gems/puppet_litmus
  [puppetlabs-stdlib]: https://github.com/puppetlabs/puppetlabs-stdlib
  [puppetlabs-registry]: https://github.com/puppetlabs/puppetlabs-registry
  [puppetlabs-package]: https://github.com/puppetlabs/puppetlabs-package
  [puppetlabs-apache]: https://github.com/puppetlabs/puppetlabs-apache
  [puppetlabs-haproxy]: https://github.com/puppetlabs/puppetlabs-haproxy
  [puppetlabs-ibm_installation_manager]: https://github.com/puppetlabs/puppetlabs-ibm_installation_manager
  [puppetlabs-accounts-pr-338]: https://github.com/puppetlabs/puppetlabs-accounts/pull/338
  [simondeziel]: https://github.com/simondeziel
  [puppetlabs-apache-pr-2089]: https://github.com/puppetlabs/puppetlabs-apache/pull/2089
  [yakatz]: https://github.com/yakatz
  [puppetlabs-apache-pr-2081]: https://github.com/puppetlabs/puppetlabs-apache/pull/2081
  [bovy89]: https://github.com/bovy89
  [puppetlabs-apt-pr-953]: https://github.com/puppetlabs/puppetlabs-apt/pull/953
  [suchpuppet]: https://github.com/suchpuppet
  [puppetlabs-haproxy-pr-449]: https://github.com/puppetlabs/puppetlabs-haproxy/pull/449
  [bastelfreak]: https://github.com/bastelfreak
  [puppetlabs-kubernetes-pr-447]: https://github.com/puppetlabs/puppetlabs-kubernetes/pull/447
  [Wiston999]: https://github.com/Wiston999
  [puppetlabs-ntp-pr-590]: https://github.com/puppetlabs/puppetlabs-ntp/pull/590
  [tmanninger]: https://github.com/tmanninger
  [puppetlabs-postgresql-pr-1199]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1199
  [ekohl]: https://github.com/ekohl
  [puppetlabs-satellite_pe_tools-pr-139]: https://github.com/puppetlabs/puppetlabs-satellite_pe_tools/pull/139
  [eppini]: https://github.com/eppini
  [puppetlabs-stdlib-pr-1139]: https://github.com/puppetlabs/puppetlabs-stdlib/pull/1139
  [b4ldr]: https://github.com/b4ldr
  [puppetlabs-tomcat-pr-415]: https://github.com/puppetlabs/puppetlabs-tomcat/pull/415
  [h-haaks]: https://github.com/h-haaks
  [pdk-pr-926]: https://github.com/puppetlabs/pdk/pull/926
  [scotje]: https://github.com/scotje
  [pdk-vanagon-pr-268]: https://github.com/puppetlabs/pdk-vanagon/pull/268
  [metadata-json-lint-pr-113]: https://github.com/voxpupuli/metadata-json-lint/pull/113

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
