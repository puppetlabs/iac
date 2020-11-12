---
layout: post
title: "2020-11-13: IAC Team Status Update"
author: michaeltlombardi
categories:
  - team
  - status
tags:
---

As always, interesting weeks for the IAC team means a slew of updates for everyone else!

## New Triage Practice

This week marked our second experimental session of full-team triage of all of our repositories.
We decided to move from an ongoing triage rotation which assigned two engineers full-time to handling incoming issues and pull requests (rotating the assignment every two weeks) to having the entire team focus on triage work every Monday.

On Monday our team processed **sixty-five** PRs—34 in our tools repositories, 31 in module repositories—and released two modules.
It has also meant a lot of pairing and knowledge sharing on the team, which has been great!

We're going to keep going with this experiment for several more weeks, but we're extremely excited with these initial results!

## Puppet 7 Compatibility Testing / Ruby 2.7 CI Support

Our proof of concept (PoC) on getting Ruby 2.7 rolled out across TravisCI is making good progress, although still in the initial stages of testing.
Depending on the results of our PoC, we may be going live with this sooner than expected—stay tuned for more updates soon.
We are now in a position where we're confident we've uncovered most compatibility issues with Puppet 7 / [Supported Modules][Supported Modules].
We've had the fringe benefit of finding issues that have needed to be addressed on the CI pipelines for a while and are now farming these issues out across the team, to resolve.
Inspired by the success of our full-team Triage days, we may borrow that methodology and swarm on them in one last push!

## Cloud CI Update

This week we have managed to finish the port of the initial 3 windows modules to run using our new Cloud CI setup.
[`Puppetlabs-registry`][puppetlabs-registry], [`puppetlabs-acl`][puppetlabs-acl] and [`puppetlabs-iis`][puppetlabs-iis] will now run PR acceptance tests using GCP provisioned resources and will have nightly scheduled workflows set up.
Currently there are still some issues we are facing on the [`puppetlabs-iis`][puppetlabs-iis] acceptance tests but we hope to get a fix for those as soon as possible.

Next week we will start to shift our focus to start the porting for [`puppetlabs-apache`][puppetlabs-apache], [`puppetlabs-java`][puppetlabs-java] and [`puppetlabs-postgresql`][puppetlabs-postgresql] while continuing to improve and stabilise our solution.

For a quick demo on how this all works please see Ben Ford's presentation on "The new Puppet Developer Experience: it's all about you".

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-apache#2086`][puppetlabs-apache-pr-2086]: "Add new `$use_servername_for_filenames` parameter": Thanks to [rsynnest][rsynnest] and [pstray][pstray] for PRs [#2064][puppetlabs-apache-pr-2064] and [#2068][puppetlabs-apache-pr-2068], respectively, which prompted this new parameter to be added. Also thanks to [igalic][igalic] and [ekohl][ekohl] for their suggestions and feedback during the development process.
- [`puppetlabs-haproxy#447`][puppetlabs-haproxy-pr-447]: "frontend options: order default_backend after specific backends & test", thanks to [MajorFlamingo][MajorFlamingo]
- [`puppetlabs-postgresql#1204`][puppetlabs-postgresql-pr-1204]: "Use non-deprecation password function in acceptance tests", thanks to [ekohl][ekohl]
- [`puppetlabs-postgresql#1203`][puppetlabs-postgresql-pr-1203]: "Drop concat_basedir fact in tests", thanks to [ekohl][ekohl]
- [`rspec-puppet-facts#122`][rspec-puppet-facts-pr-122]: "Implement fact memoization", thanks to [ekohl][ekohl] and the following people who helped get it over the line ([mcanevet][mcanevet])
- [`pdk#919`][pdk-pr-919]: "(MAINT) Update package specs for dropping Ruby 2.1.9", thanks to [scotje][scotje]
- [`pdk-templates#358`][pdk-templates-pr-358]: "(MAINT) Add `json` pin for Ruby 2.7.x", thanks to [scotje][scotje]
- [`pdk-templates#332`][pdk-templates-pr-332]: "Change global_variables key for GitLab CI to set defaults that can be overridden by jobs", thanks to [cdenneen][cdenneen]
- [`puppet-module-gems#148`][puppet-module-gems-pr-148]: "Pin parallel to < 1.20 on ruby 2.4, since 1.20 requires ruby 2.5 ", thanks to [wmuizelaar][wmuizelaar]
- [`puppet-lint#934`][puppet-lint-pr-934]: "Select parameter tokens based on preceeding code token", thanks to [rodjek][rodjek]
- [`rspec-puppet#815`][rspec-puppet-pr-815]: "(MAINT) Bump version to 2.9.0.pre", thanks to [scotje][scotje]
- [`rspec-puppet#812`][rspec-puppet-pr-812]: "Add missing links for keep-a-changelog-ish diffs", thanks to [op-ct][op-ct]

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-java`][puppetlabs-java] (`6.4.0`)
- [`puppetlabs-inifile`][puppetlabs-inifile] (`4.3.1`)
- [`puppetlabs-windows`][puppetlabs-windows] (`6.1.0`)

  [cdenneen]: https://github.com/cdenneen
  [ekohl]: https://github.com/ekohl
  [igalic]: https://github.com/igalic
  [MajorFlamingo]: https://github.com/MajorFlamingo
  [mcanevet]: https://github.com/mcanevet
  [op-ct]: https://github.com/op-ct
  [pdk-pr-919]: https://github.com/puppetlabs/pdk/pull/919
  [pdk-templates-pr-332]: https://github.com/puppetlabs/pdk-templates/pull/332
  [pdk-templates-pr-358]: https://github.com/puppetlabs/pdk-templates/pull/358
  [pstray]: https://github.com/pstray
  [puppet-lint-pr-934]: https://github.com/rodjek/puppet-lint/pull/934
  [puppet-module-gems-pr-148]: https://github.com/puppetlabs/puppet-module-gems/pull/148
  [puppetlabs-acl]: https://github.com/puppetlabs/puppetlabs-acl
  [puppetlabs-apache-pr-2064]: https://github.com/puppetlabs/puppetlabs-apache/pull/2064
  [puppetlabs-apache-pr-2068]: https://github.com/puppetlabs/puppetlabs-apache/pull/2068
  [puppetlabs-apache-pr-2086]: https://github.com/puppetlabs/puppetlabs-apache/pull/2086
  [puppetlabs-apache]: https://github.com/puppetlabs/puppetlabs-apache
  [puppetlabs-haproxy-pr-447]: https://github.com/puppetlabs/puppetlabs-haproxy/pull/447
  [puppetlabs-iis]: https://github.com/puppetlabs/puppetlabs-iis
  [puppetlabs-inifile]: https://github.com/puppetlabs/puppetlabs-inifile
  [puppetlabs-java]: https://github.com/puppetlabs/puppetlabs-java
  [puppetlabs-postgresql-pr-1203]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1203
  [puppetlabs-postgresql-pr-1204]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1204
  [puppetlabs-postgresql]: https://github.com/puppetlabs/puppetlabs-postgresql
  [Puppetlabs-registry]: https://github.com/puppetlabs/puppetlabs-registry
  [puppetlabs-windows]: https://github.com/puppetlabs/puppetlabs-windows
  [rodjek]: https://github.com/rodjek
  [rspec-puppet-facts-pr-122]: https://github.com/mcanevet/rspec-puppet-facts/pull/122
  [rspec-puppet-pr-812]: https://github.com/rodjek/rspec-puppet/pull/812
  [rspec-puppet-pr-815]: https://github.com/rodjek/rspec-puppet/pull/815
  [rsynnest]: https://github.com/rsynnest
  [scotje]: https://github.com/scotje
  [wmuizelaar]: https://github.com/wmuizelaar

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
