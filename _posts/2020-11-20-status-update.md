---
layout: post
title: "2020-11-20: IAC Team Status Update"
author: david22swan
categories:
  - team
  - status
tags:
---

Coming at you with the latest weekly blog post, here to fill you in on all the juicy IAC gossip!

## Gitpod

As of a few days ago a pr ([pdk-templates#354][pdk-templates-354]), submitted by the excellent [logicminds][logicminds] has been merged in, adding support for gitpod puppet development to the pdk-templates as an opt in option, allowing contributors to edit any enabled module via VSCode from the browser without requiring any local setup or install.

These changes include not only the basic gitpod setup, but also the creation of a container that comes packed with pdk, puppet-debugger, puppet-agent, zsh, oh-my-zsh plugins and several other productivity improvements to help enhance puppet development.

We in the IAC team are especially excited by this as it will be a great help with the many small changes that we need to make on a regular basis and so give a big thanks to [logicminds][logicminds] for the work that he put into this.

To anyone who wants to try it out, this change has been rolled out to the majority of our own modules already and we look forward to hearing any feedback that you have reguarding this change.

If you'd like some more information on Gitpod and how it works please check out the demo from James Pogran at this year's Puppetize, which will provide you with an excellent start to the use of this new functionality.

## DSC Updates

A handful of minor bugfixes and improvements to the [Puppet.Dsc][dsc-pwsh] module and the [base provider][dsc-provider] have landed—
we've got several more to come in quick succession, which means new releases of the [ruby-pwsh][ruby-pwsh] gem, the [Puppet.Dsc][dsc-pwsh] module, and the [Puppetized DSC modules on the forge][dsc-forge]!

Here's some of what we've been up to:

- [Enable Puppetizing pre-release modules][dsc-gh-76]
- [Ensure type description and attribute strings parse for reference][dsc-gh-77]
- [Fix minor typos][dsc-gh-82]
- [Ensure Optional CIM Instances are properly defined in generated types][dsc-gh-78]
- [Ensure DateTimes are handled properly][ruby-pwsh-gh-56]
- [Ensure empty arrays are handled properly][ruby-pwsh-gh-58]
- [Clarify property usage in generated readmes][dsc-gh-84]

If you'd like to see the rest of our planned work for the next cycle of releases, you can peek in on our [active milestone on GitHub][dsc-milestone] and generally watch our [GitHub project][dsc-project] for all the work in flight!

## Cloud CI Update

This week we managed to port the puppetlabs-apache and puppetlabs-java modules to run using our new Cloud CI setup.
We’ve prepared the templates in [pdk-templates](pdk-templates) for the nightly and PR Github Action workflows that will be used in the future for porting the rest of the modules.

The puppetlabs-iis porting PR is still waiting to be merged, however we have stumbled upon some acceptance test issues there that we are currently investigating.

For next week we will be focusing on improving the provision service and the associated task error handling and stabilization improvement, ironing out any remaining bumps we stumble across as we port more and more modules to use the new CI solution.

Some required changes for deploying the Github Actions to all our modules (and the reporting from the changes) can be seen in [puppetlabs/pdk-templates#363][puppetlabs-pdk-templates-pr-363].

## Triage day

Another busy and productive Monday. During IAC triage day the team processed 30 community PR’s (20 related to our tooling, and 10 related to our supported modules). On top of this, the team managed to release 3 modules as part of triage day.

## Life of an intern at Puppet

[Disha's][Disha] Placement Journey Continues.....

Hard to believe she is in the Week 12 already? Refer to the life of an intern channel [here](life_of_intern) for more interesting information!

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-apache#2091`][puppetlabs-apache-pr-2091]: "(docs) small readme change", thanks to [tphoney][tphoney]
- [`puppetlabs-docker#672`][puppetlabs-docker-pr-672]: "(MAINT) Use docker-compose config instead file parsing", thanks to [rbelnap][rbelnap]
- [`puppetlabs-firewall#951`][puppetlabs-firewall-pr-951]: "Restore copyright names", thanks to [hunner][hunner]
- [`puppetlabs-java_ks#336`][puppetlabs-java_ks-pr-336]: "Change latest/current comparison to account for chains", thanks to [mwpower][mwpower]
- [`puppetlabs-kubernetes#448`][puppetlabs-kubernetes-pr-448]: "Remove invalid kube-proxy config resourceContainer", thanks to [treydock][treydock]
- [`puppetlabs-stdlib#1137`][puppetlabs-stdlib-pr-1137]: "Allow options injection for to_yaml", thanks to [baurmatt][baurmatt]
- [`action-litmus_parallel#68`][action-litmus_parallel-pr-68]: "(docs) point users to the main branch", thanks to [tphoney][tphoney]
- [`community_management#50`][community_management-pr-50]: "add link to adoption page to the nav bar", thanks to [binford2k][binford2k]
- [`community_management#49`][community_management-pr-49]: "[WIP] first draft of adoptable modules", thanks to [binford2k][binford2k]
- [`pdk#922`][pdk-pr-922]: "(MAINT) Default to Ruby 2.5.x on packaged installations", thanks to [scotje][scotje]
- [`pdk-docker#11`][pdk-docker-pr-11]: "(PF-2226) Add github workflow for building & pushing Docker images", thanks to [nkanderson][nkanderson]
- [`pdk-templates#361`][pdk-templates-pr-361]: "Add object templates for generating new facts", thanks to [logicminds][logicminds]
- [`pdk-templates#354`][pdk-templates-pr-354]: "Add gitpod support for puppet modules", thanks to [logicminds][logicminds]
- [`metadata-json-lint#112`][metadata-json-lint-pr-112]: "Require Ruby 2.1 and drop post_install_message", thanks to [ekohl][ekohl] and the following people who helped get it over the line ([ghoneycutt][ghoneycutt])

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-java_ks`][puppetlabs-java_ks] (`3.3.0`)
- [`puppetlabs-reboot`][puppetlabs-reboot] (`3.1.0`)
- [`puppetlabs-puppet_conf`][puppetlabs-puppet_conf] (`0.7.0`)

  [logicminds]: https://github.com/logicminds
  [pdk-templates-354]: https://github.com/puppetlabs/pdk-templates/pull/354

  [dsc-forge]: https://forge.puppet.com/dsc
  [dsc-gh-76]: https://github.com/puppetlabs/Puppet.Dsc/pull/76
  [dsc-gh-77]: https://github.com/puppetlabs/Puppet.Dsc/pull/77
  [dsc-gh-78]: https://github.com/puppetlabs/Puppet.Dsc/pull/78
  [dsc-gh-82]: https://github.com/puppetlabs/Puppet.Dsc/pull/82
  [dsc-gh-84]: https://github.com/puppetlabs/Puppet.Dsc/pull/84
  [dsc-milestone]: https://github.com/puppetlabs/Puppet.Dsc/milestone/3
  [dsc-project]: https://github.com/orgs/puppetlabs/projects/28
  [dsc-provider]: https://github.com/puppetlabs/ruby-pwsh/blob/main/lib/puppet/provider/dsc_base_provider/dsc_base_provider.rb
  [dsc-pwsh]: https://github.com/puppetlabs/Puppet.Dsc
  [ruby-pwsh-gh-56]: https://github.com/puppetlabs/ruby-pwsh/pull/56
  [ruby-pwsh-gh-58]: https://github.com/puppetlabs/ruby-pwsh/pull/58
  [ruby-pwsh]: https://github.com/puppetlabs/ruby-pwsh

  [pdk-templates]: https://github.com/puppetlabs/pdk-templates/pull/363
  [puppetlabs-pdk-templates-pr-363]: https://github.com/puppetlabs/pdk-templates/pull/363

  [life_of_intern]: https://puppetlabs.github.io/iac/docs/life_of_intern

  [puppetlabs-java_ks]: https://github.com/puppetlabs/puppetlabs-java_ks
  [puppetlabs-reboot]: https://github.com/puppetlabs/puppetlabs-reboot
  [puppetlabs-puppet_conf]: https://github.com/puppetlabs/puppetlabs-puppet_conf
  [puppetlabs-apache-pr-2091]: https://github.com/puppetlabs/puppetlabs-apache/pull/2091
  [tphoney]: https://github.com/tphoney
  [puppetlabs-docker-pr-672]: https://github.com/puppetlabs/puppetlabs-docker/pull/672
  [rbelnap]: https://github.com/rbelnap
  [puppetlabs-firewall-pr-951]: https://github.com/puppetlabs/puppetlabs-firewall/pull/951
  [hunner]: https://github.com/hunner
  [puppetlabs-java_ks-pr-336]: https://github.com/puppetlabs/puppetlabs-java_ks/pull/336
  [mwpower]: https://github.com/mwpower
  [puppetlabs-kubernetes-pr-448]: https://github.com/puppetlabs/puppetlabs-kubernetes/pull/448
  [treydock]: https://github.com/treydock
  [puppetlabs-stdlib-pr-1137]: https://github.com/puppetlabs/puppetlabs-stdlib/pull/1137
  [baurmatt]: https://github.com/baurmatt
  [action-litmus_parallel-pr-68]: https://github.com/puppetlabs/action-litmus_parallel/pull/68
  [community_management-pr-50]: https://github.com/puppetlabs/community_management/pull/50
  [binford2k]: https://github.com/binford2k
  [community_management-pr-49]: https://github.com/puppetlabs/community_management/pull/49
  [pdk-pr-922]: https://github.com/puppetlabs/pdk/pull/922
  [scotje]: https://github.com/scotje
  [pdk-docker-pr-11]: https://github.com/puppetlabs/pdk-docker/pull/11
  [nkanderson]: https://github.com/nkanderson
  [pdk-templates-pr-361]: https://github.com/puppetlabs/pdk-templates/pull/361
  [logicminds]: https://github.com/logicminds
  [pdk-templates-pr-354]: https://github.com/puppetlabs/pdk-templates/pull/354
  [metadata-json-lint-pr-112]: https://github.com/voxpupuli/metadata-json-lint/pull/112
  [ekohl]: https://github.com/ekohl
  [ghoneycutt]: https://github.com/ghoneycutt

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
