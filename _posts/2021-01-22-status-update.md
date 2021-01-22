---
layout: post
title: "2021-01-22: IAC Team Status Update"
author: adrianiurca
categories:
  - team
  - status
tags:
  - litmus
  - cloud-ci
  - modules
  - iac-team
  - community-day
---

Hello! We have exciting news to share with you.
Here is this week's update from the IAC Team:

## Reaching IAC Team

Here is an interesting blog post about how you can reach IAC team [Puppet IAC Team](https://puppetlabs.github.io/iac/team/2021/01/20/reaching-out.html)

## Community Support Day

The IAC Team processed 19 community PRs processed(12 toolings, 7 modules) also we have closed 32 module issues.

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`provision#151`][provision-pr-151]: "Docker run opts", thanks to [hajee][hajee]
- [`puppetlabs-apache#2111`][puppetlabs-apache-pr-2111]: "(FIX) Correct PHP packages on Ubuntu 16.04", thanks to [ekohl][ekohl]
- [`puppetlabs-apt#964`][puppetlabs-apt-pr-964]: "Use modern os facts", thanks to [kenyon][kenyon] and the following people who helped get it over the line ([bastelfreak][bastelfreak])
- [`puppetlabs-kubernetes#471`][puppetlabs-kubernetes-pr-471]: "Ensure that changes to etcd systemd reload and restart etcd", thanks to [treydock][treydock]
- [`puppetlabs-mysql#1360`][puppetlabs-mysql-pr-1360]: "Set default MySQL version for FreeBSD", thanks to [olevole][olevole]
- [`pdk-templates#382`][pdk-templates-pr-382]: "Use ruby/setup-ruby Github action", thanks to [ekohl][ekohl]
- [`pdk-templates#379`][pdk-templates-pr-379]: "Add object templates for functions", thanks to [logicminds][logicminds]
- [`pdk-vanagon#273`][pdk-vanagon-pr-273]: "(RE-13454) Remove old gpg key from build_defaults.yaml", thanks to [e-gris][e-gris]
- [`pdk-vanagon#272`][pdk-vanagon-pr-272]: "(MAINT) Fix package building on windows", thanks to [scotje][scotje]
- [`puppet-strings#268`][puppet-strings-pr-268]: "Do not fail in case return tag has no type specified", thanks to [tiandrey][tiandrey]
- [`puppet_litmus#376`][puppet_litmus-pr-376]: "Remove deprecated version from bolt inventory", thanks to [nmaludy][nmaludy]
- [`puppet-lint#883`][puppet-lint-pr-883]: "Include check name in log output by default", thanks to [usev6][usev6]

Please swing by our [office hours on Monday](https://puppet.com/community/office-hours/) on Slack if you want to directly contact us about anything module related.

## Cloud CI

Great news this week as we have tagged the v1.0.0 of our provisioning service that is used by the Cloud CI.
This week there have been a couple of upstream issues with GCP and Github but overall, we had a bit over 3300 successful runs and around 150 failures on the nightly runs of the supported modules.
Currently all our Github Actions acceptance tests are running with Puppet 5, Puppet 6 and Puppet 7 nightly. As we have been very happy with the stability and resiliance of the nightly Puppet 7 agent we will switch the Puppet 6 runs to use the nightly builds also. We have a [PR](https://github.com/puppetlabs/puppet_litmus/pull/373) prepared for that and with the next release of Puppet Litmus all our Github Action workflow matrices will change to use the Puppet 6 nightly builds.
We are very thankful for all the help and support [Shellee](https://github.com/pup-shellee) offered us in making the service a secure and stable tool for spinning up the ephemeral testing machines.
We are touching upon three different layers (facade, backend and provision resources) to create appropriate firewalls which will helps us to tighten our security on Cloud CI provision service.

## Introduction to PDKSync

[Sheena][sheena] has written a great blog post this week giving an [overview of PDKSync]({% link _docs/pdksync.md %}), an invaluable tool that we use a lot on the team!

## litmus release 0.22.0

[David Swan][davidswan] released his workaround to a long-standing bug in bolt which was only triggered by the concat test suite.
Please check the [litmus changelog](https://github.com/puppetlabs/puppet_litmus/blob/main/CHANGELOG.md) and [bolt ticket](https://tickets.puppetlabs.com/browse/BOLT-1535).

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-vcsrepo`][puppetlabs-vcsrepo] (`3.2.0`)
- [`puppetlabs-reboot`][puppetlabs-reboot] (`3.2.0`)
- [`puppetlabs-exec`][puppetlabs-exec] (`0.9.0`)

  [puppetlabs-vcsrepo]: https://github.com/puppetlabs/puppetlabs-vcsrepo
  [puppetlabs-reboot]: https://github.com/puppetlabs/puppetlabs-reboot
  [puppetlabs-exec]: https://github.com/puppetlabs/puppetlabs-exec
  [provision-pr-151]: https://github.com/puppetlabs/provision/pull/151
  [hajee]: https://github.com/hajee
  [puppetlabs-apache-pr-2111]: https://github.com/puppetlabs/puppetlabs-apache/pull/2111
  [ekohl]: https://github.com/ekohl
  [puppetlabs-apt-pr-964]: https://github.com/puppetlabs/puppetlabs-apt/pull/964
  [kenyon]: https://github.com/kenyon
  [bastelfreak]: https://github.com/bastelfreak
  [puppetlabs-kubernetes-pr-471]: https://github.com/puppetlabs/puppetlabs-kubernetes/pull/471
  [treydock]: https://github.com/treydock
  [puppetlabs-mysql-pr-1360]: https://github.com/puppetlabs/puppetlabs-mysql/pull/1360
  [olevole]: https://github.com/olevole
  [pdk-templates-pr-382]: https://github.com/puppetlabs/pdk-templates/pull/382
  [pdk-templates-pr-379]: https://github.com/puppetlabs/pdk-templates/pull/379
  [logicminds]: https://github.com/logicminds
  [pdk-vanagon-pr-273]: https://github.com/puppetlabs/pdk-vanagon/pull/273
  [e-gris]: https://github.com/e-gris
  [pdk-vanagon-pr-272]: https://github.com/puppetlabs/pdk-vanagon/pull/272
  [scotje]: https://github.com/scotje
  [puppet-strings-pr-268]: https://github.com/puppetlabs/puppet-strings/pull/268
  [tiandrey]: https://github.com/tiandrey
  [puppet_litmus-pr-376]: https://github.com/puppetlabs/puppet_litmus/pull/376
  [nmaludy]: https://github.com/nmaludy
  [puppet-lint-pr-883]: https://github.com/rodjek/puppet-lint/pull/883
  [usev6]: https://github.com/usev6
  [adrian]: https://github.com/adrianiurca
  [ben]: https://github.com/binford2k
  [ciaran]: https://github.com/sanfrancrisko
  [daiana]: https://github.com/daianamezdrea
  [danny]: https://github.com/carabasdaniel
  [davidschmitt]: https://github.com/DavidS
  [davidswan]: https://github.com/david22swan
  [disha]: https://github.com/Disha-maker
  [lore]: https://github.com/lionce
  [michael]: https://github.com/michaeltlombardi
  [paula]: https://github.com/pmcmaw
  [sheena]: https://github.com/sheenaajay
  [supported modules]: https://puppetlabs.github.io/iac/modules/
  [tp]: https://github.com/tphoney
  [tools]: https://puppetlabs.github.io/iac/tools/
