---
layout: post
title: "2021-01-29: IAC Team Status Update"
author: tphoney
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

Hey everyone, it's my honour to write my first blogpost for Puppet. Kinda strange in [I][TP] have done a number of other things for puppet, but never a blogpost. Case in point, my talk about [litmus](https://www.youtube.com/watch?v=FYfR7ZEGHoE) (available permanently on youtube to make me shudder at my own voice). On to business !!!

## What is the IAC Team

How did you find this post then ? Just kidding, we are a team at puppet that looks after all the modules / tasks / gems / tools that you as a community use. If we dont look after it we know who you should talk to. Here is a great blog post on how to reach us [Puppet IAC Team](https://puppetlabs.github.io/iac/team/2021/01/20/reaching-out.html)

## Ecosystem Kickoff

The IAC team is part of a larger group at puppet that has as its main focus 'you' the community. We had our opening meeting discussing the direction of our work for the next year, and it all looks very exciting. I can't give away too much yet, but more details will trickle out as we confirm our goals.


## Cloud CI
What I can talk a little about is [Danny's][Danny] work on a new proof of concept. We are an automation company so we are always looking to remove a few steps from our process, this project will enable us to automate some of the manual steps required to release modules. Leaving the the human to only review and click merge on Github.
We have made a bit of progress on preparing the initial workflow that can be seen [here](https://github.com/puppetlabs/puppetlabs-testing/blob/main/.github/workflows/auto_release.yml)
In the last 7 days we had a bit over 5200 successful jobs runs and around 260 failures for both PRs and nightly jobs using Puppet Agent 6 Nightly, Puppet Agent 7 nightly and Puppet Agent 5.
A bit of work is currently undergoing on revamping the Github Actions report on community management and we are very hopeful that the new report will allow us to pinpoint the failures easier and illustrate the current situation better. 

## DSC

Everyone's favourite topic, [Paula][Paula] and [Michael][Michael] have hit their first [milestone](https://github.com/puppetlabs/Puppet.Dsc/milestone/3?closed=1), and are now focusing on the most important part. Documentation and blogposts ! There will also be a rebuild of the DSC modules to fix a vendored path issue. AND the march to 1.0 is well underway with a real focus on testing.

## Networking Device Support Enhancements

[Ciaran][Ciaran] has been working on enhancing the [cisco_ios](https://github.com/puppetlabs/cisco_ios) module to include two new [Bolt tasks](https://puppet.com/docs/bolt/latest/writing_tasks.html) to backup and restore configurations. The PoC has been proven out and now we're just wrapping up on some final development tasks before moving on to more extensive testing. We are looking to make this as universal as we can across as many Cisco devices as we can and have some exciting developments in the pipeline for better testing against Cisco devices. More details soon...

## Community Contributions

On the community day we normally focus on all the wonderful contributions we receive in Github, but over the past couple of weeks we have started to look at our JIRA backlog. There are a lot of tickets there as you can imagine. We have been categorising them based on the module they are associated with and also closing off tickets that are no longer relevant or that have already been fixed. There were 20 community PR's merged in FOSS module or tooling projects.

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-apache#2112`][puppetlabs-apache-pr-2112]: "Use the correct matches in rspec", thanks to [ekohl][ekohl]
- [`puppetlabs-apt#965`][puppetlabs-apt-pr-965]: "(RE-13415) Update GPG key in example", thanks to [e-gris][e-gris]
- [`puppetlabs-java_ks#349`][puppetlabs-java_ks-pr-349]: "Fix keytool path handling", thanks to [chillinger][chillinger]
- [`puppetlabs-postgresql#1227`][puppetlabs-postgresql-pr-1227]: "Set default PostgresQL version for FreeBSD", thanks to [olevole][olevole]
- [`puppetlabs-stdlib#1154`][puppetlabs-stdlib-pr-1154]: "Drop facter.d facts needed for Facter < 1.7", thanks to [ekohl][ekohl]
- [`puppetlabs-stdlib#1150`][puppetlabs-stdlib-pr-1150]: "stdlib::ensure: new fuction to cast ensure values", thanks to [b4ldr][b4ldr]
- [`pdk#938`][pdk-pr-938]: "(MAINT) Update Travis/Appveyor to build `main` branch", thanks to [scotje][scotje]
- [`puppet-modulebuilder#32`][puppet-modulebuilder-pr-32]: "Use Puppet 7 in development on Ruby 2.7+", thanks to [ekohl][ekohl]
- [`puppet-modulebuilder#31`][puppet-modulebuilder-pr-31]: "Add a setter for release_name", thanks to [ekohl][ekohl]
- [`puppetlabs_spec_helper#330`][puppetlabs_spec_helper-pr-330]: "Restructure PuppetLint rake tasks so they can be configurable", thanks to [nmaludy][nmaludy]

Please swing by our [office hours on Monday](https://puppet.com/community/office-hours/) on Slack if you want to directly contact us about anything module related.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-apache`][puppetlabs-apache] (`5.9.0`)
- [`puppetlabs-postgresql`][puppetlabs-postgresql] (`6.9.0`)
- [`puppetlabs-iis`][puppetlabs-iis] (`7.2.0`)

  [puppetlabs-apache]: https://github.com/puppetlabs/puppetlabs-apache
  [puppetlabs-postgresql]: https://github.com/puppetlabs/puppetlabs-postgresql
  [puppetlabs-iis]: https://github.com/puppetlabs/puppetlabs-iis
  [puppetlabs-apache-pr-2112]: https://github.com/puppetlabs/puppetlabs-apache/pull/2112
  [ekohl]: https://github.com/ekohl
  [puppetlabs-apt-pr-965]: https://github.com/puppetlabs/puppetlabs-apt/pull/965
  [e-gris]: https://github.com/e-gris
  [puppetlabs-java_ks-pr-349]: https://github.com/puppetlabs/puppetlabs-java_ks/pull/349
  [chillinger]: https://github.com/chillinger
  [puppetlabs-postgresql-pr-1227]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1227
  [olevole]: https://github.com/olevole
  [puppetlabs-stdlib-pr-1154]: https://github.com/puppetlabs/puppetlabs-stdlib/pull/1154
  [puppetlabs-stdlib-pr-1150]: https://github.com/puppetlabs/puppetlabs-stdlib/pull/1150
  [b4ldr]: https://github.com/b4ldr
  [pdk-pr-938]: https://github.com/puppetlabs/pdk/pull/938
  [scotje]: https://github.com/scotje
  [puppet-modulebuilder-pr-32]: https://github.com/puppetlabs/puppet-modulebuilder/pull/32
  [puppet-modulebuilder-pr-31]: https://github.com/puppetlabs/puppet-modulebuilder/pull/31
  [puppetlabs_spec_helper-pr-330]: https://github.com/puppetlabs/puppetlabs_spec_helper/pull/330
  [nmaludy]: https://github.com/nmaludy

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
