---
layout: post
title: "2020-10-23: IAC Team Status Update"
author: sheenaajay
categories:
  - team
  - status
tags:
  - community
  - releases
  - puppet_intern
  - puppet7
  - cloud-ci
  - Hacktoberfest
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-docker#671`][puppetlabs-docker-pr-671]: "Fix array of additional flags", thanks to [CAPSLOCK2000][CAPSLOCK2000]
- [`puppetlabs-docker#669`][puppetlabs-docker-pr-669]: "Support multiple mirrors #659", thanks to [TheLocehiliosan][TheLocehiliosan]
- [`puppetlabs-docker#667`][puppetlabs-docker-pr-667]: "Test against OS family rather than name", thanks to [bodgit][bodgit]
- [`puppetlabs-java_ks#333`][puppetlabs-java_ks-pr-333]: "add storetype parameter comparison to 'destroy' method", thanks to [mwpower][mwpower]
- [`puppetlabs-java_ks#332`][puppetlabs-java_ks-pr-332]: "Correct jceks symbol comparison", thanks to [mwpower][mwpower]
- [`puppetlabs-stdlib#1132`][puppetlabs-stdlib-pr-1132]: "Stdlib::HttpStatus: add type for HTTP status codes as per rfc2616", thanks to [b4ldr][b4ldr]
- [`pdk-templates#355`][pdk-templates-pr-355]: "(#352) Add .puppet-lint.rc and .sync.yml to .pdkignore", thanks to [silug][silug]
- [`puppet-module-gems#143`][puppet-module-gems-pr-143]: "Add initial setup of gitpod config files", thanks to [logicminds][logicminds]
- [`puppet-resource_api#279`][puppet-resource_api-pr-279]: "Improve type validation error messages to show expected types", thanks to [timidri][timidri]
- [`puppet-resource_api#278`][puppet-resource_api-pr-278]: "Support `puppet device --resource ... --to_yaml` invocation; drop puppet4 and jruby 1.7 testing", thanks to [timidri][timidri]
- [`puppet-strings#255`][puppet-strings-pr-255]: "Fix ERB failure - parameters without descriptions", thanks to [trevor-vaughan][trevor-vaughan]
- [`puppet-lint#931`][puppet-lint-pr-931]: "Disallow empty lines between docs and class/define", thanks to [ekohl][ekohl] and the following people who helped get it over the line ([ehelms][ehelms])

## Customer Issues

Team is actively working on resolving following new issues on [puppetlabs-package][puppetlabs-package] module.
- [MODULES-10842][MODULES-10842]
- [MODULES-10844][MODULES-10844]

Fix for [puppetlabs-tagmail][puppetlabs-tagmail] module for the following issue [MODULES-10814][MODULES-10814] is in review stage.

## Life of an intern at Puppet

[Disha][disha-maker] continues her journey at Puppet and [here](https://puppetlabs.github.io/iac/docs/life_of_intern) you can find the last updates of ** Life of an intern at Puppet ** .

## Puppet 7 Nightly Testing

A big thank you to the Nights Watch team, specifically, [Florin][florin] and [Bogdan][IrimieBogdan] for the help to test and fix [MODULES-10833][MODULES-10833] in [puppetlabs-facter_task][puppetlabs-facter_task-pr-134] module.

## CI Improvements

Hacktoberfest is an annual event hosted by DigitalOcean and DEV.to in order to promote Open Source collaboration. More details can be found [here][hacktoberfest]. 
It was held on 20-Oct-2020 and we did a demo on Trusted Contributor CI project where public (test-)pull request run unit and acceptance tests on entirely public infrastructure and report the [results in public](https://github.com/puppetlabs/puppetlabs-testing/pull/306/checks. 
Thanks to [David][DavidS], [Dany][carabasdaniel] and [Michael][michaeltlombardi] for the demo. 

As part of that work, we submitted some work and bug report to upstream repos:
- Fix fallback filename when using a subdirectory: [GoogleCloudPlatform/cloud-builders-community#456](https://github.com/GoogleCloudPlatform/cloud-builders-community/pull/456)
  
Expect more detailed blog posts and announcements as we continue to progress towards a production-ready stable service. 

## Wrap-up

That's it for this weeks update, have a great weekend everyone! 

  [puppetlabs-docker-pr-671]: https://github.com/puppetlabs/puppetlabs-docker/pull/671
  [CAPSLOCK2000]: https://github.com/CAPSLOCK2000
  [puppetlabs-docker-pr-669]: https://github.com/puppetlabs/puppetlabs-docker/pull/669
  [TheLocehiliosan]: https://github.com/TheLocehiliosan
  [puppetlabs-docker-pr-667]: https://github.com/puppetlabs/puppetlabs-docker/pull/667
  [bodgit]: https://github.com/bodgit
  [puppetlabs-facter_task-pr-134]: https://github.com/puppetlabs/puppetlabs-facter_task/pull/134
  [IrimieBogdan]: https://github.com/IrimieBogdan
  [puppetlabs-java_ks-pr-333]: https://github.com/puppetlabs/puppetlabs-java_ks/pull/333
  [mwpower]: https://github.com/mwpower
  [puppetlabs-java_ks-pr-332]: https://github.com/puppetlabs/puppetlabs-java_ks/pull/332
  [puppetlabs-stdlib-pr-1132]: https://github.com/puppetlabs/puppetlabs-stdlib/pull/1132
  [b4ldr]: https://github.com/b4ldr
  [pdk-templates-pr-355]: https://github.com/puppetlabs/pdk-templates/pull/355
  [silug]: https://github.com/silug
  [puppet-module-gems-pr-143]: https://github.com/puppetlabs/puppet-module-gems/pull/143
  [logicminds]: https://github.com/logicminds
  [puppet-resource_api-pr-279]: https://github.com/puppetlabs/puppet-resource_api/pull/279
  [timidri]: https://github.com/timidri
  [puppet-resource_api-pr-278]: https://github.com/puppetlabs/puppet-resource_api/pull/278
  [puppet-strings-pr-255]: https://github.com/puppetlabs/puppet-strings/pull/255
  [trevor-vaughan]: https://github.com/trevor-vaughan
  [puppet-lint-pr-931]: https://github.com/rodjek/puppet-lint/pull/931
  [ekohl]: https://github.com/ekohl
  [ehelms]: https://github.com/ehelms
  [rspec-puppet-pr-808]: https://github.com/rodjek/rspec-puppet/pull/808
  [puppetlabs-facter_task-pr-134]: https://github.com/puppetlabs/puppetlabs-facter_task/pull/134
  [IrimieBogdan]: https://github.com/IrimieBogdan
  [florin]: https://github.com/florin
  [disha-maker]: https://github.com/disha-maker
  [MODULES-10833]: https://tickets.puppetlabs.com/browse/MODULES-10833
  [hacktoberfest]: https://puppet.com/blog/hacktoberfest-2020/
  [DavidS]: https://github.com/DavidS
  [carabasdaniel]: https://github.com/carabasdaniel/
  [michaeltlombardi]: https://github.com/michaeltlombardi
  [MODULES-10842]: https://tickets.puppetlabs.com/browse/MODULES-10842
  [MODULES-10844]: https://tickets.puppetlabs.com/browse/MODULES-10844
  [MODULES-10814]: https://tickets.puppetlabs.com/browse/MODULES-10814
  [puppetlabs-package]: https://github.com/puppetlabs/puppetlabs-package
  [puppetlabs-tagmail]: https://github.com/puppetlabs/puppetlabs-package

