---
layout: post
title: "2020-10-30: IAC Team Status Update"
author: sanfrancrisko
categories:
  - team
  - status
tags:
  - puppet7
  - apache
  - docker
  - java
  - package
  - strings
  - rspec-puppet
  - tagmail
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-apache#2079`][puppetlabs-apache-pr-2079]: "Change icon path", thanks to [yakatz][yakatz]
- [`puppetlabs-apache#2078`][puppetlabs-apache-pr-2078]: "Support mod_auth_gssapi parameters", thanks to [traylenator][traylenator]
- [`puppetlabs-docker#674`][puppetlabs-docker-pr-674]: "Added compatibility with facter 2.4.6 puppetlabs#626", thanks to [Tozapid][Tozapid]
- [`puppetlabs-java#442`][puppetlabs-java-pr-442]: "README: add Ubuntu 20.04", thanks to [kenyon][kenyon]
- [`puppetlabs-package#216`][puppetlabs-package-pr-216]: "(MODULES-10844)", thanks to [pgrant87][pgrant87]
- [`puppet-strings#260`][puppet-strings-pr-260]: "Handle a missing description gracefully", thanks to [scotje][scotje]
- [`puppet-strings#254`][puppet-strings-pr-254]: "Fix codeowners", thanks to [binford2k][binford2k]
- [`rspec-puppet#807`][rspec-puppet-pr-807]: "Implement RSpec::Puppet::Coverage.add_filter_regex", thanks to [scotje][scotje]
- [`rspec-puppet#793`][rspec-puppet-pr-793]: "Add support for trusted external data", thanks to [ekinanp][ekinanp] and the following people who helped get it over the line ([garrettrowell][garrettrowell])

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-tagmail`][puppetlabs-tagmail] (`3.4.0`)

## Platform 7 Testing Update

We've now have many runs of the Puppet 7 Nightly builds under our belt and the issues discovered are starting to reduce whilst our confidence is increasing.

The [Night's Watch][Night's Watch] team have been fantastic in reacting to issues really promptly and going above and beyond the call of duty to ensure the fixes were delivered and verified, rapidly.
Thanks again folks and good luck as you enter the last phase of development and testing for Puppet 7!

Our placement student [Disha][Disha] got her first experience of a "last minute context shift" (_which seasoned veterans can confidently assert, won't be the last!_) - thank you [Disha][Disha] for dropping your current work and jumping on with [myself][Ciaran] and [Daiana][Daiana] in the testing effort this week!

## Cloud CI Progress

[Danny][Danny], [David Schmitt][DavidSchmitt] and [Sheena][Sheena] have continued to forge ahead on our new cloud CI solution.
A great milestone was hit this week, where the first of our [Supported Modules][Supported Modules] ([`puppetlabs-motd`][puppetlabs-motd]) had it's acceptance tests executed on the new platform.

Check out the [Github Workflow results][motd-cloud-ci] to see how acceptance test runs using the Cloud CI platform will look.

[Danny][Danny] has also prepared a demo for [Puppetize Digital][puppetize-digital] showing this off too - see below for more details.

Great work team! :smiley:

## Changes to Triage Process

Firstly, we'd like to thank [Adrian][Adrian] for carrying nearly all of this last triage run's duties, himself!

If you are not familiar with the triage process on the [IAC Team][iac-team-intro], we tend to work in 2 week blocks (running Wed - Wed).
Two team members will be responsible for a number of tasks during this time:

- Reviewing PRs from the Puppet Community against our [Supported Modules][Supported Modules] and [Tools][Tools]
- Assisting with code changes, testing and ultimately merging said PRs
- Keeping our CI ticking over
- Releasing modules and gems

From next week, we are going to make this an entire team effort every Monday.
We hope that with the entire team involved for a whole day, we'll be better able to improve our engagement with the Community and move through PRs in a more responsive manner.

Another reason is to allow us to then focus on work items the rest of the week that may have been reported by, or are towards the benefit of, the Community.

It's no coincidence that [Office Hours][office-hours] occurs on a Monday - if you have any contributions you want to discuss via video call or on Slack, feel free to drop by - you'll find more of the IAC Team there than ever!

## Customer Reported Issues

We'd like to thank [Paddy][pgrant87] on the Support Team for [tackling and resolving an issue in the `puppetlabs-package` module][puppetlabs-package-pr-216]!
(With apologies to Stephen), if you want to join the IAC Team, you know where we are, [Paddy][pgrant87]! :smiley:

## Puppetize and Demos

[Puppetize Digital][puppetize-digital] kicks off on Nov 19th!
Our very own [Danny][Danny] and [Michael][Michael] have prepared some demos for [Puppetize][puppetize-digital], and having previewed them, I know you'll enjoy them!

[Danny][Danny] has put together an excellent demo (that [Ben][Ben] will be delivering) that shows a PR being tested on our new Cloud CI platform.
It's a great overview of how it's all put together, how the Community will use it and some hints at future plans we're excited about.

[Michael][Michael] has put together an equally excellent demo showing how our recently released [Puppet.Dsc][Puppet.Dsc] tool which walks through a module from the PS Gallery being Puppetized in to a Puppet module!
If you're in the Windows Sys Admin space, you will **NOT** want to miss this!

Well done [Danny][Danny] and [Michael][Michael]! :clap:

## Wrap Up

That's the week that was on the team!

:jack_o_lantern: :ghost: :jack_o_lantern: :ghost: :jack_o_lantern: **HAPPY HALLOWEEN** :jack_o_lantern: :ghost: :jack_o_lantern: :ghost: :jack_o_lantern:

  [puppetlabs-tagmail]: https://github.com/puppetlabs/puppetlabs-tagmail/
  [puppetlabs-apache-pr-2079]: https://github.com/puppetlabs/puppetlabs-apache/pull/2079
  [yakatz]: https://github.com/yakatz
  [puppetlabs-apache-pr-2078]: https://github.com/puppetlabs/puppetlabs-apache/pull/2078
  [traylenator]: https://github.com/traylenator
  [puppetlabs-docker-pr-674]: https://github.com/puppetlabs/puppetlabs-docker/pull/674
  [Tozapid]: https://github.com/Tozapid
  [puppetlabs-java-pr-442]: https://github.com/puppetlabs/puppetlabs-java/pull/442
  [kenyon]: https://github.com/kenyon
  [puppetlabs-package-pr-216]: https://github.com/puppetlabs/puppetlabs-package/pull/216
  [pgrant87]: https://github.com/pgrant87
  [puppet-strings-pr-260]: https://github.com/puppetlabs/puppet-strings/pull/260
  [scotje]: https://github.com/scotje
  [puppet-strings-pr-254]: https://github.com/puppetlabs/puppet-strings/pull/254
  [binford2k]: https://github.com/binford2k
  [rspec-puppet-pr-807]: https://github.com/rodjek/rspec-puppet/pull/807
  [rspec-puppet-pr-793]: https://github.com/rodjek/rspec-puppet/pull/793
  [ekinanp]: https://github.com/ekinanp
  [garrettrowell]: https://github.com/garrettrowell
  
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
  
  [Night's Watch]:      https://github.com/orgs/puppetlabs/teams/night-s-watch
  [puppetlabs-motd]:    https://github.com/puppetlabs/puppetlabs-motd
  [iac-team-intro]:     https://puppetlabs.github.io/iac/team/basics/2020/01/29/infrastructure-automation-content-team.html
  [office-hours]:       https://puppet.com/community/office-hours/
  [puppetize-digital]:  https://digital.puppetize.com/s/landing-page4/home
  [Puppet.Dsc]:         https://github.com/puppetlabs/Puppet.Dsc
  [motd-cloud-ci]:      https://github.com/puppetlabs/puppetlabs-motd/pull/342/checks
