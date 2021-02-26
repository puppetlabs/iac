---
layout: post
title: "2021-02-26: IAC Team Status Update"
author: daianamezdrea
categories:
  - team
  - status
tags:
- community
- releases
- cloud-ci
- pdk
- big-monday
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-apt#971`][puppetlabs-apt-pr-971]: "Fix typo in weak_ssl documentation", thanks to [Safranil][Safranil]
- [`puppetlabs-kubernetes#475`][puppetlabs-kubernetes-pr-475]: "Update criSocket to avoid deprecation warnings", thanks to [treydock][treydock]
- [`puppetlabs-package#237`][puppetlabs-package-pr-237]: "Fix package task for yum when passing version", thanks to [cliveweir][cliveweir]
- [`pdk#948`][pdk-pr-948]: "(MAINT) Release prep for 2.0.0", thanks to [scotje][scotje]
- [`pdk#947`][pdk-pr-947]: "(MAINT) Drop gemspec requirement to Ruby >= 2.4.0", thanks to [scotje][scotje]
- [`pdk#946`][pdk-pr-946]: "(MAINT) Require Ruby >= 2.5.0 in gemspec and simplify Gemfile", thanks to [scotje][scotje]
- [`pdk-docker#21`][pdk-docker-pr-21]: "(PF-2183) Updates to reflect new default branch of `main`", thanks to [scotje][scotje]
- [`pdk-docker#20`][pdk-docker-pr-20]: "(FIXUP) Add additional error handling for Anubis v2 evaluations", thanks to [nkanderson][nkanderson]
- [`pdk-vanagon#275`][pdk-vanagon-pr-275]: "(MAINT) Add latest puppets", thanks to [scotje][scotje]

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## New Module

The following modules were released this week:

- [`puppetlabs-vcsrepo`][puppetlabs-vcsrepo] (`3.2.1`)
- [`puppetlabs-postgresql`][puppetlabs-postgresql] (`6.10.2`)

## Gem Releases

[`puppet-litmus`][puppet-litmus] (`0.25.0`)

## PDK 2.0.0 is now available!

Special thanks to  [David Schmitt][David Schmitt] and [Jesse Scott][Jesse Scott] for their hard work and dedication in getting PDK 2.0.0 released this week.
In the new version you can find new features and enhancements as: ability to generate new facts, the pdk new fact command to generate new custom facts in a module, ability to generate new functions, the pdk new function command to generate new functions in a module, AIX option to new module interview options, AIX to OS compatibility picker during the guided interview for pdk new module  and more surprises. Check [here](https://puppet.com/docs/pdk/2.x/release_notes_pdk.html#pdk-20) and see what we have for you!

## Big news and big next Monday!

We are in the process of dropping Puppet 5 support from our supported modules. Puppet 5 reached End of Life (EOL) in January 2021. The plan is to start rolling out updated modules with Puppet 5 support removed by the start of next week (March 1st 2021). We have a lot of releases planned - stay tuned, it's going to be a big Monday!

## Cloud CI Update

This week after the release of Puppet Litmus `0.25.0` and the update of the acceptance test workflows (https://github.com/puppetlabs/pdk-templates/pull/398), a PDKSync across all our supported modules will ensure that all acceptance tests for PRs and nightly runs are now using both the Cloud CI resources as well as the `litmusimage` docker containers in their respective Github Actions workflows. 
As part of the multi-node acceptance tests we are slowly making progress in stabilizing the `puppetlabs-kubernetes` and started the investigation for the port of the `puppetlabs-websphere_application_server` module. 
A PDKSync run with the update to the latest pdk-templates will follow soon. A lot of thanks to Daniel and Sheena for this work.

## DSC 
 For the last few weeks focus has been on triaging/debugging and fixing issues from the field. Michael has been leading this charge to provide top-notch technical support on all things DSC related. Thank you, Michael!

## IAC & Night's Watch Collaboration
A big shout out to [gimmyxd][gimmy]for the great sync up session with [Ciaran][Ciaran] where they used [pdksync][pdksync] and the [PDK][PDK] to update a number of the core modules under the [Night's Watch][Night's Watch] remit.
We're always keen to get feedback on the tooling we develop and maintain, and the [Night's Watch][Night's Watch] team are always great to collaborate with!
There's always a good bit of two way traffic between our two teams and it's usually the case that the combined results are greater than the sum of its parts. Thank you Ciaran and Gimmy for your time and efforts! 

 ## See you next week!
This is all for this week, have a great weekend and be ready for the next week updates!

  [puppetlabs-vcsrepo]: https://github.com/puppetlabs/puppetlabs-vcsrepo
  [puppetlabs-postgresql]: https://github.com/puppetlabs/puppetlabs-postgresql
  [puppetlabs-kubernetes]: https://github.com/puppetlabs/puppetlabs-kubernetes
  [puppetlabs-websphere_application_server]: https://github.com/puppetlabs/puppetlabs-websphere_application_server.git
  [puppet-litmus]: https://github.com/puppetlabs/puppet_litmus
  [puppetlabs-apt-pr-971]: https://github.com/puppetlabs/puppetlabs-apt/pull/971
  [Safranil]: https://github.com/Safranil
  [puppetlabs-kubernetes-pr-475]: https://github.com/puppetlabs/puppetlabs-kubernetes/pull/475
  [treydock]: https://github.com/treydock
  [puppetlabs-package-pr-237]: https://github.com/puppetlabs/puppetlabs-package/pull/237
  [cliveweir]: https://github.com/cliveweir
  [pdk-pr-948]: https://github.com/puppetlabs/pdk/pull/948
  [scotje]: https://github.com/scotje
  [pdk-pr-947]: https://github.com/puppetlabs/pdk/pull/947
  [pdk-pr-946]: https://github.com/puppetlabs/pdk/pull/946
  [pdk-docker-pr-21]: https://github.com/puppetlabs/pdk-docker/pull/21
  [pdk-docker-pr-20]: https://github.com/puppetlabs/pdk-docker/pull/20
  [nkanderson]: https://github.com/nkanderson
  [pdk-vanagon-pr-275]: https://github.com/puppetlabs/pdk-vanagon/pull/275
  [pdksync]: https://github.com/puppetlabs/pdksync
  [PDK]: https://github.com/puppetlabs/pdk
  [Night's Watch]: https://github.com/orgs/puppetlabs/teams/night-s-watch


  [Adrian]:             https://github.com/adrianiurca
  [Jessie Scott]:       https://github.com/scotje
  [Ben]:                https://github.com/binford2k
  [Ciaran]:             https://github.com/sanfrancrisko
  [Daiana]:             https://github.com/daianamezdrea
  [Danny]:              https://github.com/carabasdaniel
  [David Schmitt]:       https://github.com/DavidS
  [DavidSwan]:          https://github.com/david22swan
  [Disha]:              https://github.com/Disha-maker
  [Lore]:               https://github.com/lionce
  [Michael]:            https://github.com/michaeltlombardi
  [Paula]:              https://github.com/pmcmaw
  [Sheena]:             https://github.com/sheenaajay
  [gimmy]:              https://github.com/gimmyxd 
  [Supported Modules]:  https://puppetlabs.github.io/iac/modules/
  [TP]:                 https://github.com/tphoney
  [Tools]:              https://puppetlabs.github.io/iac/tools/
