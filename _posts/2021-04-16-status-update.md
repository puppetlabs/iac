---
layout: post
title: "2021-04-16: IAC & DevX Team Status Update"
author: david22swan
categories:
  - team
  - status
tags:
  - terminology
  - intern
  - releases
  - devx
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-apt#985`][puppetlabs-apt-pr-985]: "apt::mark: fix docs", thanks to [kenyon][kenyon]
- [`puppetlabs-haproxy#477`][puppetlabs-haproxy-pr-477]: "Fix 'option' entry name in option_order hash", thanks to [antaflos][antaflos]
- [`puppetlabs-mysql#1378`][puppetlabs-mysql-pr-1378]: "Fix: Puppet Unknown variable: 'mysql::params::exec_path'", thanks to [JvGinkel][JvGinkel]
- [`puppet-strings#272`][puppet-strings-pr-272]: "Update CODEOWNERS", thanks to [binford2k][binford2k]
- [`puppet_litmus#407`][puppet_litmus-pr-407]: "(maint) Update bolt requirement to include 3.x", thanks to [beechtom][beechtom]

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-stdlib`][puppetlabs-stdlib] (`7.0.1`)
- [`puppetlabs-postgresql`][puppetlabs-postgresql] (`7.1.0`)
- [`puppetlabs-ibm_installation_manager`][puppetlabs-ibm_installation_manager] (`3.0.1`)
- [`puppet-litmus`][puppet-litmus] (`0.26.3`)

  [puppetlabs-stdlib]: https://github.com/puppetlabs/puppetlabs-stdlib
  [puppetlabs-postgresql]: https://github.com/puppetlabs/puppetlabs-postgresql
  [puppetlabs-ibm_installation_manager]: https://github.com/puppetlabs/puppetlabs-ibm_installation_manager
  [puppet-litmus]: https://github.com/puppetlabs/puppet-litmus
  [puppetlabs-apt-pr-985]: https://github.com/puppetlabs/puppetlabs-apt/pull/985
  [kenyon]: https://github.com/kenyon
  [puppetlabs-haproxy-pr-477]: https://github.com/puppetlabs/puppetlabs-haproxy/pull/477
  [antaflos]: https://github.com/antaflos
  [puppetlabs-mysql-pr-1378]: https://github.com/puppetlabs/puppetlabs-mysql/pull/1378
  [JvGinkel]: https://github.com/JvGinkel
  [puppet-strings-pr-272]: https://github.com/puppetlabs/puppet-strings/pull/272
  [binford2k]: https://github.com/binford2k
  [puppet_litmus-pr-407]: https://github.com/puppetlabs/puppet_litmus/pull/407
  [beechtom]: https://github.com/beechtom

## Developer Experience

The DevX team is starting to build steam! [Ciaran][Ciaran] spent the week reviewing existing tickets for what bugs and features to tackle next, with a focus on pkd validate as the next likely candidate. [David Armstrong][DavidArmstrong] spent some time in researching our packaging process to plan improvements in reducing the size of the PDK package. This week [James][James] delivered a presentation on VS Code :fire: tips and tricks at the April Puppet Camp. Recordings will be available soon. A lot of people responded to the PDK Survey, so we will be closing that this week and will report the results next week

## Terminology Changes

I am happy to announce the end of our terminology work, as of yesterday all *master* branches have been removed from our supported modules and tools, and with the previous work done to remove any mentions I am happy to declare this piece of work closed.

A big shout out to [David Swan][DavidSwan] (i.e. Me!) for heading up this work.

## Intern Update

Disha’s attended her 1st Puppet Camp this week! Check out her blog of what she is up to this week [here](https://puppetlabs.github.io/iac/lifeofinternatpuppet/post_31.html)

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
