---
layout: post
title: "2020-12-18: IAC Team Status Update"
author: sheenaajay
categories:
  - team
  - status
tags:
  - community
  - releases
  - dsc
  - windows
  - cloud-ci
  - puppet-module-gem
  - rubocop
  - infrastructure
---

## Christmas edition
Puppet is getting ready for the Virtual Chirstmas Party.
Santa, Food, Drinks, Sweets, Gaming, Charades and many more.

The holiday season upon us, the IAC team would like to wish all of Puppet's Open Source Community Happy Holidays and thank everyone for their contributions through the very challenging year of 2020.
The IAC team will be taking a well earned break to recharge the batteries, and we hope you can too.
We look forward to the continued open source communities help and contributions in 2021.

![Christmas]({% link /assets/2020-12-18-status-update/christmas.jpg %})

This week has been wild.
Lots of community contributions, lots of releases, DSC updates, removing inappropriate language, Cloud CI progress and more! Check out below for the details.

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-apache#2090`][puppetlabs-apache-pr-2090]: "Add support for mod_md", thanks to [smortex][smortex]
- [`puppetlabs-apt#962`][puppetlabs-apt-pr-962]: "backports.pp: correct example", thanks to [kenyon][kenyon]
- [`puppetlabs-docker#692`][puppetlabs-docker-pr-692]: "fixing issue #689 by setting HOME in docker command", thanks to [sdinten][sdinten] and the following people who helped get it over the line ([deubert-it][deubert-it], [ahoiroman][ahoiroman])
- [`puppetlabs-kubernetes#460`][puppetlabs-kubernetes-pr-460]: "Support installing containerd using a package", thanks to [treydock][treydock]
- [`puppetlabs-vsphere#196`][puppetlabs-vsphere-pr-196]: "Update REFERENCE.md", thanks to [ola-pt][ola-pt]
- [`pdk#930`][pdk-pr-930]: "Update Rakefile to use ABS as hypervisor", thanks to [sbeaulie][sbeaulie]
- [`pdk#921`][pdk-pr-921]: "Add ability to generate new facts", thanks to [logicminds][logicminds]
- [`pdk-docker#13`][pdk-docker-pr-13]: "(PF-2215) Add entrypoint for Anubis lint evaluation", thanks to [nkanderson][nkanderson]
- [`pdk-planning#75`][pdk-planning-pr-75]: "(MAINT) Fix up ruby version for github actions", thanks to [scotje][scotje]

On Community Monday we processed 9 PRs (3 on tooling and 6 on modules).
The slow pace day enabled the team to focus on releasing content and we released 6 modules as part of Triage day. Please note this is the last triage day until the New Year.

## New Module / Gem Releases - Puppet 7 support

Our supported modules are now officially compatible with Puppet 7.
We're committed to rolling out the module releases as fast as we can, incorporating as many valuable changes as possible from the Community in to the releases too.
Some modules pushed to the Forge so far, are:

The following modules were released this week:

- [puppetlabs/accounts](https://forge.puppet.com/puppetlabs/accounts) (v6.4.0)
- [puppetlabs/concat](https://forge.puppet.com/puppetlabs/concat) (v6.4.0)
- [puppetlabs/docker](https://forge.puppet.com/puppetlabs/docker) (v3.13.0)
- [puppetlabs/haproxy](https://forge.puppet.com/puppetlabs/haproxy) (v4.5.0)
- [puppetlabs/java](https://forge.puppet.com/puppetlabs/java) (v6.5.0)
- [puppetlabs/java_ks](https://forge.puppet.com/puppetlabs/java_ks) (v3.4.0)
- [puppetlabs/kubernetes](https://forge.puppet.com/puppetlabs/kubernetes) (v5.5.0)
- [puppetlabs/motd](https://forge.puppet.com/puppetlabs/motd) (v4.3.0)
- [puppetlabs/mysql](https://forge.puppet.com/puppetlabs/mysql) (v10.9.0)
- [puppetlabs/ntp](https://forge.puppet.com/puppetlabs/ntp) (v8.5.0)
- [puppetlabs/puppet_conf](https://forge.puppet.com/puppetlabs/puppet_conf) (v0.8.0)
- [puppetlabs/pwshlib](https://forge.puppet.com/puppetlabs/pwshlib) (v0.6.3)
- [puppetlabs/scheduled_task](https://forge.puppet.com/puppetlabs/scheduled_task) (v2.3.1)
- [puppetlabs/service](https://forge.puppet.com/puppetlabs/service) (v1.4.0)
- [puppetlabs/tomcat](https://forge.puppet.com/puppetlabs/tomcat) (v4.3.0)

Again, we applied the principle "Team work, dream work".
On Wednesday during a team show and tell session, together we successfully released 15 modules for this week.
Many thanks to the entire team for the hard work!

## Rubocop Update
As announced [last week](https://puppetlabs.github.io/iac/team/status/2020/12/11/status-update.html#preparing-for-pdk-20) we released [puppet-module-gems v1.0.0](https://github.com/puppetlabs/puppet-module-gems/blob/main/CHANGELOG.md#100) with some significant updates.
[pdk-templates#main](https://github.com/puppetlabs/pdk-templates) is also seeing some updates to support this.
Most visible is the update to the latest rubocop release (from rubocop 0.49, released over three years ago).
We're still tweaking the ruleset as we roll out the changes to our modules.
If you try it out and find something annoying, inconvenient or outright stupid, please don't hesitate to send us a message to [the team](mailto:ia_content@puppet.com) with an example so we can fix it before the PDK 2.0 release.

## Github Action Update
A huge shout-out to [Koenraad](https://github.com/kvrhdn), the maintainer of [kvrhdn/gha-buildevents](https://github.com/kvrhdn/gha-buildevents).
This github action is part of our effort to capture all CI happenings in a single Honeycomb dataset.
Last week we contributed a few changes ([#19](https://github.com/kvrhdn/gha-buildevents/pull/19), [#18](https://github.com/kvrhdn/gha-buildevents/pull/18)) to improve the flexibility and what data is captured.
With those changes merged, we're one step closer to our goal.

## Customer bugs
One new ticket has been raised against scheduled_task [MODULES-10893](https://tickets.puppetlabs.com/browse/MODULES-10893), Big thank you to [Bill][Bill] for helping the team out and putting up a [PR](https://github.com/puppetlabs/puppetlabs-scheduled_task/pull/175) for this issue. Thanks [Ciaran][Ciaran] for the quick review, merge and release of the module.
Once an IAC team member will always be an IAC team member cheers [Bill][Bill].

## Tales from the Intern

Disha's week 16 was very busy too. Find out more information [on her blog](https://puppetlabs.github.io/iac/docs/life_of_intern.html)

## Content Cloud CI Project
This week we have 32 of the IAC supported modules running nightlies and part of the PR testing on the Cloud CI services.
We have worked on a couple of stability issues and in the past 24 hours, the nightlies ran 427 jobs and encountered a total of 15 failures.
We also improved the provision error tracking. Out of those 15 failures none seem to be related to provisioning.
Over the last 7 days, we created 5888 VMs for testing purposes compared to 4613, the week before that.
We will continue to improve the service and the reporting early next year.

## DSC

DSC is gathering momentum. We're now up to 51 [new DSC modules](https://forge.puppet.com/dsc) on the Forge. With every new module, we learn more and harden the solution.

## Inappropriate Terminology

With everything else going on, we do not want to forget our effort to remove exclusive and inappropriate terminology from our code base. Here's the current progress:

- 38 modules updated
- 4 in progress
- 11 remaining

That's 76% completed.

  [puppetlabs-concat]: https://github.com/puppetlabs/puppetlabs-concat
  [puppetlabs-docker]: https://github.com/puppetlabs/puppetlabs-docker
  [puppetlabs-firewall]: http://github.com/puppetlabs/puppetlabs-firewall
  [puppetlabs-haproxy]: https://github.com/puppetlabs/puppetlabs-haproxy
  [puppetlabs-motd]: https://github.com/puppetlabs/puppetlabs-motd
  [puppetlabs-tomcat]: https://github.com/puppetlabs/puppetlabs-tomcat
  [puppetlabs-kubernetes]: https://github.com/puppetlabs/puppetlabs-kubernetes
  [puppetlabs-scheduled_task]: https://github.com/puppetlabs/puppetlabs-scheduled_task
  [puppetlabs-service]: https://github.com/puppetlabs/puppetlabs-service
  [puppetlabs-puppet_conf]: https://github.com/puppetlabs/puppetlabs-puppet_conf
  [puppetlabs-apache-pr-2090]: https://github.com/puppetlabs/puppetlabs-apache/pull/2090
  [smortex]: https://github.com/smortex
  [puppetlabs-apt-pr-962]: https://github.com/puppetlabs/puppetlabs-apt/pull/962
  [kenyon]: https://github.com/kenyon
  [puppetlabs-docker-pr-692]: https://github.com/puppetlabs/puppetlabs-docker/pull/692
  [sdinten]: https://github.com/sdinten
  [deubert-it]: https://github.com/deubert-it
  [ahoiroman]: https://github.com/ahoiroman
  [puppetlabs-kubernetes-pr-460]: https://github.com/puppetlabs/puppetlabs-kubernetes/pull/460
  [treydock]: https://github.com/treydock
  [puppetlabs-vsphere-pr-196]: https://github.com/puppetlabs/puppetlabs-vsphere/pull/196
  [ola-pt]: https://github.com/ola-pt
  [pdk-pr-930]: https://github.com/puppetlabs/pdk/pull/930
  [sbeaulie]: https://github.com/sbeaulie
  [pdk-pr-921]: https://github.com/puppetlabs/pdk/pull/921
  [logicminds]: https://github.com/logicminds
  [pdk-docker-pr-13]: https://github.com/puppetlabs/pdk-docker/pull/13
  [nkanderson]: https://github.com/nkanderson
  [pdk-planning-pr-75]: https://github.com/puppetlabs/pdk-planning/pull/75
  [scotje]: https://github.com/scotje

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
  [Bill]:               https://github.com/RandomNoun7
  [Supported Modules]:  https://puppetlabs.github.io/iac/modules/
  [Tools]:              https://puppetlabs.github.io/iac/tools/
