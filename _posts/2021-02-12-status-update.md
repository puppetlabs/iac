---
layout: post
title: "2021-02-12: IAC Team Status Update"
author: david22swan
categories:
  - team
  - status
tags:
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-postgresql#1233`][puppetlabs-postgresql-pr-1233]: "Also perform systemd daemon-reload on Puppet 6.1+", thanks to [ekohl][ekohl]
- [`puppetlabs-stdlib#1160`][puppetlabs-stdlib-pr-1160]: "Stdlib::Email type", thanks to [b4ldr][b4ldr] and the following people who helped get it over the line ([pegasd][pegasd])
- [`facterdb#168`][facterdb-pr-168]: "Add Darwin 19 (macOS 10.15) x86_64 Support", thanks to [yachub][yachub]
- [`facterdb#167`][facterdb-pr-167]: "Remove `clientX` facts from solaris factsets", thanks to [alexjfisher][alexjfisher]
- [`pdk#937`][pdk-pr-937]: "(RE-13453) Remove old gpg key from build_defaults.yaml", thanks to [e-gris][e-gris]
- [`puppet-modulebuilder#33`][puppet-modulebuilder-pr-33]: "Store Ruby version as a Gem::Version in a var", thanks to [ekohl][ekohl]
- [`puppetlabs_spec_helper#334`][puppetlabs_spec_helper-pr-334]: "Add gemspec required_ruby_version", thanks to [alexjfisher][alexjfisher]

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-firewall`][puppetlabs-firewall] (`2.8.1`)
- [`puppetlabs-postgresql`][puppetlabs-postgresql] (`6.10.1`)
- [`puppet_litmus`][puppet_litmus] (`0.23.1`)
- [`puppetlabs_spec_helper`][puppetlabs_spec_helper] (`3.0.0`)
- [`puppet-module-gems`][puppet-module-gems] (`1.1.0`)

  [puppetlabs-firewall]:            http://github.com/puppetlabs/puppetlabs-firewall
  [puppetlabs-postgresql]:          https://github.com/puppetlabs/puppetlabs-postgresql
  [puppet_litmus]:                  https://github.com/puppetlabs/puppet_litmus
  [puppetlabs_spec_helper]:         https://github.com/puppetlabs/puppetlabs_spec_helper
  [puppet-module-gems]:             https://github.com/puppetlabs/puppet-module-gems
  [puppetlabs-postgresql-pr-1233]:  https://github.com/puppetlabs/puppetlabs-postgresql/pull/1233
  [ekohl]:                          https://github.com/ekohl
  [puppetlabs-stdlib-pr-1160]:      https://github.com/puppetlabs/puppetlabs-stdlib/pull/1160
  [b4ldr]:                          https://github.com/b4ldr
  [pegasd]:                         https://github.com/pegasd
  [facterdb-pr-168]:                https://github.com/camptocamp/facterdb/pull/168
  [yachub]:                         https://github.com/yachub
  [facterdb-pr-167]:                https://github.com/camptocamp/facterdb/pull/167
  [alexjfisher]:                    https://github.com/alexjfisher
  [pdk-pr-937]:                     https://github.com/puppetlabs/pdk/pull/937
  [e-gris]:                         https://github.com/e-gris
  [puppet-modulebuilder-pr-33]:     https://github.com/puppetlabs/puppet-modulebuilder/pull/33
  [puppetlabs_spec_helper-pr-334]:  https://github.com/puppetlabs/puppetlabs_spec_helper/pull/334

## Shout Outs

Before we get on with the bigger subjects we have a few quick shout outs to make this week!

- First of to [David Armstrong][DavidA] for introducing [Paula][Paula] to the process of debugging tasks!
- And to [Eugene Piven][EugeneP], we would like to give a specific shout out for identifying an issue in our new stdlib email type!
- Finally to [Vadym Chepkov][vchepkov] and [Ewoud Kohl van Wijngaarden][ekohl] we would like to thank you for your recent work on the [postgresql][puppetlabs-postgresql] module, the relevant [PR][puppetlabs-postgresql-pr-1233] being shown above. Thank you both!

  [DavidA]:             https://github.com/da-ar
  [EugeneP]:            https://github.com/pegasd
  [vchepkov]:           https://github.com/vchepkov

## IAC Team Contributions

- [`puppetlabs-stdlib#1161`][puppetlabs-stdlib-pr-1161]: "(IAC-1414) Throw error in range() function when step size invalid", thanks to [Ciaran][Ciaran]

  [puppetlabs-stdlib-pr-1161]: https://github.com/puppetlabs/puppetlabs-stdlib/pull/1161

## Puppet Practitioner Training

This week, [Adrian][Adrian], [Daiana][Daiana] and [Ciaran][Ciaran] have been on the [Puppet Practitioners course][PractitionersCourse] run by the excellent [Andrew Jones][Andrew].
It's been a very useful course that gives us a better perspective of the customer use cases and viewpoint of the Puppet products and ecosystem.
[Andrew][Andrew] is incredibly knowledgeable and great at delivering the course - we'd highly recommend it for anyone who uses Puppet in their environment and wants to discover the full potential.
There's been many "that's so cool!" and "I didn't know you could do that!" moments this week, even from Puppet employees.
On that note, [Andrew][Andrew] had his work cut out for him this week, taking in IAC Team members, Customer Support engineers and other software developers in Puppet.
We've had lots of questions for him, wanting to dive in to the intricacies of the functionality, but he has been infallible in his answers / explanations and we've had some great discussions and knowledge sharing amongst the group.
Thanks again [Andrew][Andrew] and a shout out to [Clive][Clive], [Gavin D][GavinD], [Jordi][Jordi] and [Gavin P][GavinP] for some of the great questions, conversations and knowledge sharing too!

  [Andrew]:               https://github.com/16c7x
  [Clive]:                https://github.com/cliveweir
  [GavinD]:               https://github.com/gavindidrichsen
  [Jordi]:                https://github.com/jordi-garcia
  [GavinP]:               https://github.com/GSPatton
  [PractitionersCourse]:  https://learn.puppet.com/instructor-led-training/puppet-practitioner

## Cloud CI

This week we started preparations to use docker containers for acceptance testing in the Github Runner matrix setup to ensure all our acceptance testing is in the same workflow. As soon as this will be available we will start to remove the Travis and Appveyor configurations from our supported modules.
The WIP draft for the matrix configuration is available [here][puppet-litmus-pr-385] and a follow up a draft will be set up on the pdk-templates that will use this to generate the full acceptance matrix in both the PR testing and nightly run workflows.
For the automated release preparation workflow we would like to use the PDK docker container instead of gem injection, but we still have a couple of issues with [building the gems][puppetlabs-testing-issues] in the container at the moment.
Also starting this week we have begun to prepare the ibm_installation_manager to run the tests on cloud ci. As part of the that  we are able to replace the dependent packages required for the testing with trial versions and executed against them successfully. We will be working on porting those packages to google cloud storage and access from there for automated test runs on cloud ci.

  [puppet-litmus-pr-385]:       https://github.com/puppetlabs/puppet_litmus/pull/385
  [puppetlabs-testing-issues]:  https://github.com/puppetlabs/puppetlabs-testing/runs/1863891582?check_suite_focus=true

## Removal of Inappropriate Terminology

As of the linked [ticket][puppetlabs-helm-pr-140] being merged in puppetlabs-helm I am happy to announce that we have finished our work in the removal of all possible instances of inappropriate or offensive terminologies from our supported modules and altered their primary branches to be the `main` branch.
As part of this announcement I would like to remind everyone the the old `master` is no longer updated and will be removed from the modules in the future and so would urge anyone directly referencing it to instead target the `main` branch.

  [puppetlabs-helm-pr-140]: https://github.com/puppetlabs/puppetlabs-helm/pull/140

## A Sad Day for the IAC Team

Alongside all this weeks good news we have some sad news to announce. It is an end of an era, a good friend and colleague [TP Honey][TP] is leaving Puppet today for pastures new. TP has been a role model and mentor, to all within the IAC team and his contributions have helped so many in our Open Source Commmunity. As he leaves the team would like to remind TP that all PRs are welcome.

From all IAC team members and the larger, Puppet family, thank you for all your help and support over the years.

I hope you will all join with me, wherever you are now, in raising a toast, to TP!

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
  [TP]:                 https://github.com/tphoney
  [Tools]:              https://puppetlabs.github.io/iac/tools/
