---
layout: post
title: "2020-12-04: IAC Team Status Update"
author: daianamezdrea
categories:
  - team
  - status
tags:
- community
- ci cloud
- module releases
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-kubernetes#451`][puppetlabs-kubernetes-pr-451]: "Add scheduler_extra_arguments parameter", thanks to [treydock][treydock]
- [`action-litmus_parallel#71`][action-litmus_parallel-pr-71]: "(MAINT) Fix user install bug", thanks to [RandomNoun7][RandomNoun7]
- [`action-litmus_parallel#69`][action-litmus_parallel-pr-69]: "Fix ENV Set Method", thanks to [RandomNoun7][RandomNoun7]
- [`action-litmus_spec#61`][action-litmus_spec-pr-61]: "(MAINT) Fix user install bug", thanks to [RandomNoun7][RandomNoun7]
- [`action-litmus_spec#60`][action-litmus_spec-pr-60]: "Fix ENV Set Method", thanks to [RandomNoun7][RandomNoun7]
- [`pdk-templates#360`][pdk-templates-pr-360]: "(fix) Set rubocop ruby version to 2.4", thanks to [tuxmea][tuxmea]
- [`puppet-modulebuilder#26`][puppet-modulebuilder-pr-26]: "Use match_path instead of match_paths", thanks to [ekohl][ekohl]
- [`puppet_litmus#344`][puppet_litmus-pr-344]: "Fix append_cli parameters", thanks to [hajee][hajee]

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-concat`][puppetlabs-concat] (`6.3.0`)
- [`puppetlabs-acl`][puppetlabs-acl] (`3.2.1`)
- [`puppetlabs-kubernetes`][puppetlabs-kubernetes] (`5.4.0`)
- [`puppetlabs-device_manager`][puppetlabs-device_manager] (`3.1.0`)

## Triage day

Even if half of the team was on PTO, we got through all the supported modules repos and most of all our tooling processing, so we managed to review and merge 11 PRs as well as releasing 4 modules. 

## CI and special Wednesday

Again, we applied the principle "Team work, dream work" and together we successfully ported 22 modules onto the Cloud CI. Many thanks to the entire team for the hard work! Check out the new look of our module test runs: [`puppetlabs-chocolatey#235`](https://github.com/puppetlabs/puppetlabs-chocolatey/pull/235/checks)

## Happy 3 months for Disha! 

It's been 3 months since Disha joined the team and she started her journey in our team. If you want to know more about her work and last updates, you can always check [here](https://puppetlabs.github.io/iac/lifeofinternatpuppet/post_14.html) her blog.

#### Wrap-up

That's it for this week, have a great week-end and stay safe !


  [puppetlabs-concat]: https://github.com/puppetlabs/puppetlabs-concat
  [puppetlabs-acl]: https://github.com/puppetlabs/puppetlabs-acl
  [puppetlabs-kubernetes]: https://github.com/puppetlabs/puppetlabs-kubernetes
  [puppetlabs-device_manager]: https://github.com/puppetlabs/device_manager
  [puppetlabs-kubernetes-pr-451]: https://github.com/puppetlabs/puppetlabs-kubernetes/pull/451
  [treydock]: https://github.com/treydock
  [action-litmus_parallel-pr-71]: https://github.com/puppetlabs/action-litmus_parallel/pull/71
  [RandomNoun7]: https://github.com/RandomNoun7
  [action-litmus_parallel-pr-69]: https://github.com/puppetlabs/action-litmus_parallel/pull/69
  [action-litmus_spec-pr-61]: https://github.com/puppetlabs/action-litmus_spec/pull/61
  [action-litmus_spec-pr-60]: https://github.com/puppetlabs/action-litmus_spec/pull/60
  [pdk-templates-pr-360]: https://github.com/puppetlabs/pdk-templates/pull/360
  [tuxmea]: https://github.com/tuxmea
  [puppet-modulebuilder-pr-26]: https://github.com/puppetlabs/puppet-modulebuilder/pull/26
  [ekohl]: https://github.com/ekohl
  [puppet_litmus-pr-344]: https://github.com/puppetlabs/puppet_litmus/pull/344
  [hajee]: https://github.com/hajee

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
