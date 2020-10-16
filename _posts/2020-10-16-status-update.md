---
layout: post
title: "2020-10-16: IAC Team Status Update"
author: DavidS
categories:
  - team
  - status
tags:
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-docker#666`][puppetlabs-docker-pr-666]: Thanks to [optiz0r][optiz0r]
- [`puppetlabs-mysql#1334`][puppetlabs-mysql-pr-1334]: Thanks to [andeman][andeman]
- [`facterdb#160`][facterdb-pr-160]: Thanks to [logicminds][logicminds]
- [`facterdb#159`][facterdb-pr-159]: Thanks to [logicminds][logicminds]
- [`pdk-vanagon#267`][pdk-vanagon-pr-267]: Thanks to [scotje][scotje]
- [`pdk#916`][pdk-pr-916]: Thanks to [scotje][scotje]
- [`rspec-puppet#799`][rspec-puppet-pr-799]: Thanks to [scotje][scotje]

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-docker`][puppetlabs-docker] (`3.12.1`)
- [`puppetlabs-firewall`][puppetlabs-firewall] (`2.7.0`)

## Life of an intern at Puppet

[Disha][disha-maker] continues her journey as a placement student at Puppet. Expect her next update about the [Life of an intern at Puppet](https://puppetlabs.github.io/iac/docs/life_of_intern) next week.

## Puppet 7 Nightly Testing

As part of our progress to a stable Puppet 7 platform release, we are now expanding our Puppet 7 nightly build tests to all [supported modules][supported modules].
A big thank you to the Nights Watch team, specifically, [Florin][florin], [Gimmy][gimmy] and [Oana][oana] for their help in debugging an issue in the [`puppetlabs-docker`][puppetlabs-docker] module.

## CI Improvements

As hinted before we are working on a public cloud-based acceptance testing solution for the puppet modules we maintain.
One of the big problems over the years was that our internal testing results were not available for our community contributors.
This locked up our investment in testing inside the corporate VPN and did not help community contributors.

This is about to change.
Today we had the first public (test-)pull request run unit and acceptance tests on entirely public infrastructure and report the [results in public](https://github.com/puppetlabs/puppetlabs-testing/pull/301/checks).
As we roll out the new jobs to all our [modules][supported modules] and all our platforms, you'll be start to see the test results show up on PRs and on a schedule checking against environmental drift.
Over the next weeks we'll also work on batting down the hatches and tidying up the code base to allow us run a smooth and reliable platform.
Expect more detailed blog posts and announcements as we continue to progress towards a production-ready stable service.

As part of that work, we submitted some work and bug reports to upstream repos:
- Improve caching in Google Cloud Build: [GoogleCloudPlatform/cloud-builders-community#454](https://github.com/GoogleCloudPlatform/cloud-builders-community/pull/454) and [GoogleCloudPlatform/cloud-builders-community#456](https://github.com/GoogleCloudPlatform/cloud-builders-community/pull/456)
- Reported a API error in [googleapis/google-auth-library-ruby#274](https://github.com/googleapis/google-auth-library-ruby/issues/274), which was subsequently fixed by [Daniel Azuma](https://github.com/dazuma) and released as 0.14.0.

  [disha-maker]: https://github.com/disha-maker
  [supported modules]: https://puppetlabs.github.io/iac/modules/
  [florin]: https://github.com/florindragos
  [gimmy]: https://github.com/gimmyxd
  [oana]: https://github.com/oanatmaria
  [puppetlabs-docker]: https://github.com/puppetlabs/puppetlabs-docker
  [puppetlabs-firewall]: http://github.com/puppetlabs/puppetlabs-firewall
  [puppetlabs-docker-pr-666]: https://github.com/puppetlabs/puppetlabs-docker/pull/666
  [optiz0r]: https://github.com/optiz0r
  [puppetlabs-mysql-pr-1334]: https://github.com/puppetlabs/puppetlabs-mysql/pull/1334
  [andeman]: https://github.com/andeman
  [facterdb-pr-160]: https://github.com/camptocamp/facterdb/pull/160
  [logicminds]: https://github.com/logicminds
  [facterdb-pr-159]: https://github.com/camptocamp/facterdb/pull/159
  [iac-pr-123]: https://github.com/puppetlabs/iac/pull/123
  [pdk-vanagon-pr-267]: https://github.com/puppetlabs/pdk-vanagon/pull/267
  [scotje]: https://github.com/scotje
  [pdk-pr-916]: https://github.com/puppetlabs/pdk/pull/916
  [rspec-puppet-pr-799]: https://github.com/rodjek/rspec-puppet/pull/799
