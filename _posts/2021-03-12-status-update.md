---
layout: post
title: "2021-03-12: IAC Team Status Update"
author: DavidS
categories:
  - team
  - status
tags:
  - community
  - releases
  - litmus
  - bolt
  - inventory
  - cloud-ci
  - reporting
  - misc
  - cisco_ios
  - tasks
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-accounts#369`][puppetlabs-accounts-pr-369]: "(MODULES-10960) Selector needs multiple checks in brackets.", thanks to [tuxmea][tuxmea]
- [`puppetlabs-apt#973`][puppetlabs-apt-pr-973]: "MODULES-10956 remove redundant code in provider apt_key", thanks to [moritz-makandra][moritz-makandra]
- [`puppetlabs-kubernetes#494`][puppetlabs-kubernetes-pr-494]: "Added information about Hiera YAML Lookup; installing a updated version.", thanks to [bitvijays][bitvijays]
- [`puppetlabs-mysql#1373`][puppetlabs-mysql-pr-1373]: "Fix Java binding package for Ubuntu 20.04", thanks to [treydock][treydock]
- [`puppetlabs-postgresql#1253`][puppetlabs-postgresql-pr-1253]: "Ensure port is a string in psql command", thanks to [ekohl][ekohl]
- [`puppetlabs-puppet_conf#140`][puppetlabs-puppet_conf-pr-140]: "Add delete action", thanks to [fetzerms][fetzerms]
- [`puppetlabs-reboot#284`][puppetlabs-reboot-pr-284]: "Cleanup: Changed to ctrl::sleep() and removed redundant reboot::sleep() function", thanks to [fetzerms][fetzerms]
- [`pdk-docker#23`][pdk-docker-pr-23]: "Fix onceover install issue", thanks to [cdenneen][cdenneen]
- [`pdk-templates#413`][pdk-templates-pr-413]: "(#412) Add .devcontainer to .pdkignore", thanks to [silug][silug]
- [`pdk-vanagon#278`][pdk-vanagon-pr-278]: "(maint) Disable ansicon in VS Code", thanks to [jpogran][jpogran] and the following people who helped get it over the line ([scotje][scotje])

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## New Module / Gem Releases

After the release bonanza of last week, this week was very quiet in that regard:

- [`puppetlabs-postgresql`][puppetlabs-postgresql] (`7.0.1`)

We would like to thank [Josh Cooper][joshcooper] for the help in fixing the `Sensitive` issue on postgresql module. The relevant [PR][PR-1258] and the [ticket][PUP-10950].

  [joshcooper]: https://github.com/joshcooper
  [PUP-10950]: https://tickets.puppetlabs.com/browse/PUP-10950
  [PR-1258]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1258
  [puppetlabs-postgresql]: https://github.com/puppetlabs/puppetlabs-postgresql
  [puppetlabs-accounts-pr-369]: https://github.com/puppetlabs/puppetlabs-accounts/pull/369
  [tuxmea]: https://github.com/tuxmea
  [puppetlabs-apt-pr-973]: https://github.com/puppetlabs/puppetlabs-apt/pull/973
  [moritz-makandra]: https://github.com/moritz-makandra
  [puppetlabs-kubernetes-pr-494]: https://github.com/puppetlabs/puppetlabs-kubernetes/pull/494
  [bitvijays]: https://github.com/bitvijays
  [puppetlabs-mysql-pr-1373]: https://github.com/puppetlabs/puppetlabs-mysql/pull/1373
  [treydock]: https://github.com/treydock
  [puppetlabs-postgresql-pr-1253]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1253
  [ekohl]: https://github.com/ekohl
  [puppetlabs-puppet_conf-pr-140]: https://github.com/puppetlabs/puppetlabs-puppet_conf/pull/140
  [fetzerms]: https://github.com/fetzerms
  [puppetlabs-reboot-pr-284]: https://github.com/puppetlabs/puppetlabs-reboot/pull/284
  [pdk-docker-pr-23]: https://github.com/puppetlabs/pdk-docker/pull/23
  [cdenneen]: https://github.com/cdenneen
  [pdk-templates-pr-413]: https://github.com/puppetlabs/pdk-templates/pull/413
  [silug]: https://github.com/silug
  [pdk-vanagon-pr-278]: https://github.com/puppetlabs/pdk-vanagon/pull/278
  [jpogran]: https://github.com/jpogran
  [scotje]: https://github.com/scotje

## Community Day

With few releases, this week we could focus on spring cleaning tickets.
Overall we processed 85 github PRs and JIRA issues.
Now, for the first time in several years, we are able to dig into the community backlog.
If we continue this rate we would burn through all currently open tickets by the end of the year.
While a fun thought experiment, the reality is that we're focusing on the easy bits first.
Weeding out reports for removed and unmaintained tickets, assigning components where necessary and removing layers of previous generations of project management will allow us a clearer view of next steps.

## Cisco backup/restore tasks

[Ciaran][Ciaran] implemented config backup and restore tasks for Cisco devices in [this PR](https://github.com/puppetlabs/cisco_ios/pull/427).
If you have the cisco_ios module in use, please give the new capabilities a spin and [tell us about it]({% link _posts/2021-01-20-reaching-out.md %})!
Ciaran has been testing them against the Cisco Modelling Lab, and that is a pretty nifty thing to play around with.

## Litmus inventory.yaml files are on the move

This week we have been working on [GH-380](https://github.com/puppetlabs/puppet_litmus/issues/380).
We realised that it might be surprising to people and dangerous when running bolt and litmus from the same repo.
If you currently use puppet-litmus please be prepared for an inventory.yaml file relocation in the next few weeks.
The new location will be spec/fixtures/litmus_inventory.yaml.
This is to keep all our litmus configuration separate and to avoid mishaps in production.
This will include changes in:
* puppet-litmus
* provision module
* pdk-templates
The work is still ongoing and being tested, however expect to see this in the next few weeks!
When you upgrade to the new version, make sure to also upgrade/redownload your `puppetlabs/provision` fixture module with the updated tasks.

## Cloud CI Update: multi-node

This week we have started the work on porting the puppetlabs-websphere_application_server module to use the Cloud CI for testing.
Thanks to [Ciaran](https://github.com/sanfrancrisko) we'll now be able to set up spec testing using Github Action workflow for all our supported modules [PR](https://github.com/puppetlabs/pdk-templates/pull/372/files).
With the release of puppet_litmus 0.26.0, the spec tests workflows and the [publishing workflow](https://github.com/puppetlabs/pdk-templates/pull/408) merged into the pdk-templates we'll follow up with a pdksync accross all our supported modules.
On the multi-node testing both the puppetlabs-helm and puppetlabs-kubernetes modules now run an integration suite testing for each pull request on a multi-node environment using the Cloud CI provisioning service.

### Updating Community Reports

As part of the new CI we started tracking the health of CI in the [Github Actions Report](https://puppetlabs.github.io/community_management/GithubActionsReport.html).
While functional, the initial implementation was rather ... drab.
[Daiana](https://github.com/daianamezdrea) is working on an [overhaul](https://github.com/puppetlabs/community_management/pull/57) and it is already looking a lot better!

**Before:**

![screenshot of the old report, with lots of black lines and wasteful vertical layout.]({% link assets/2021-03-12-status-update/actions-report-before.png %})

**After:**

![screenshot of the new report, with a donut chart of overall success and compact horizontal arrangement.]({% link assets/2021-03-12-status-update/actions-report-after.png %})

## Other Work

* [David Swan][DavidSwan] fixed a locale issue when using litmus with RHEL7-based targets ([IAC-1420](https://tickets.puppetlabs.com/browse/IAC-1420)) and has turned his attention now to the removal of inappropriate terminology from our tooling repos.
* [Daiana][Daiana] updated the kubetool images on dockerhub: [MODULES-10964](https://tickets.puppetlabs.com/browse/MODULES-10964)
* [Disha][Disha] fixed handling of draft PRs in our reports: [IAC-1197](https://tickets.puppetlabs.com/browse/IAC-1197)
* [Ciaran][Ciaran] started on transitioning spec testing from travis and appveyor to github actions: [IAC-1307](https://tickets.puppetlabs.com/browse/IAC-1307) captures part of the work.

## Epilogue

Regular dev work slowed down a bit as were shifting into new patterns based on gearing up for executing on this year's planning cycle.
I, for one, am very chuffed about the progress we made as a team and against our goals and I'm even more excited about the plans we're setting in motion now.
We'll make sure to keep you updated here.


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
