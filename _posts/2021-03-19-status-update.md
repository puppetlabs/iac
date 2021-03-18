---
layout: post
title: "2021-03-19: IAC Team Status Update"
author: pmcmaw
categories:
  - team
  - status
tags:
  - community
  - holidays
  - releases
  - modules
  - gems
  - ci
---

## Happy St Patricks Day

All of the team located in Belfast were off on Wednesday this week for St Patricks day. For everyone it was pretty quiet due to local restrictions in place but nice to get a break in the middle of the week! :-)

![st_patricks_day]({% link /assets/2021-03-19-status-update/stp_day.png %}){:align="center"}

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-accounts#369`][puppetlabs-accounts-pr-369]: "(MODULES-10960) Selector needs multiple checks in brackets.", thanks to [tuxmea][tuxmea]
- [`puppetlabs-accounts#353`][puppetlabs-accounts-pr-353]: "(MODULES-10892) Update name.pp", thanks to [LooOOooM][LooOOooM]
- [`puppetlabs-apache#2135`][puppetlabs-apache-pr-2135]: "Fix dav_svn for Debian 10", thanks to [martijndegouw][martijndegouw]
- [`puppetlabs-apache#2129`][puppetlabs-apache-pr-2129]: "Drop Ubuntu 10.04 compatibility code", thanks to [ekohl][ekohl]
- [`puppetlabs-apache#2110`][puppetlabs-apache-pr-2110]: "Compare with major release version", thanks to [ekohl][ekohl]
- [`puppetlabs-apt#973`][puppetlabs-apt-pr-973]: "MODULES-10956 remove redundant code in provider apt_key", thanks to [moritz-makandra][moritz-makandra]
- [`puppetlabs-kubernetes#494`][puppetlabs-kubernetes-pr-494]: "Added information about Hiera YAML Lookup; installing a updated version.", thanks to [bitvijays][bitvijays]
- [`puppetlabs-mysql#1373`][puppetlabs-mysql-pr-1373]: "Fix Java binding package for Ubuntu 20.04", thanks to [treydock][treydock]
- [`puppetlabs-postgresql#1253`][puppetlabs-postgresql-pr-1253]: "Ensure port is a string in psql command", thanks to [ekohl][ekohl]
- [`puppetlabs-puppet_conf#140`][puppetlabs-puppet_conf-pr-140]: "Add delete action", thanks to [fetzerms][fetzerms]
- [`puppetlabs-reboot#284`][puppetlabs-reboot-pr-284]: "Cleanup: Changed to ctrl::sleep() and removed redundant reboot::sleep() function", thanks to [fetzerms][fetzerms]
- [`pdk#961`][pdk-pr-961]: "(Docs)Updating docs metadata", thanks to [hestonhoffman][hestonhoffman]
- [`pdk#957`][pdk-pr-957]: "(PF-2332) Add `pdk env` subcommand", thanks to [nkanderson][nkanderson] and the following people who helped get it over the line ([scotje][scotje])
- [`pdk-docker#29`][pdk-docker-pr-29]: "(FIXUP) Clean up image push workflow output", thanks to [nkanderson][nkanderson]
- [`pdk-docker#28`][pdk-docker-pr-28]: "(maint) Add usage instructions to Readme", thanks to [da-ar][da-ar]
- [`pdk-docker#23`][pdk-docker-pr-23]: "Fix onceover install issue", thanks to [cdenneen][cdenneen]
- [`pdk-templates#413`][pdk-templates-pr-413]: "(#412) Add .devcontainer to .pdkignore", thanks to [silug][silug]
- [`pdk-vanagon#280`][pdk-vanagon-pr-280]: "(MAINT) Update RHEL platform configs to use RedHat pooler images", thanks to [scotje][scotje]
- [`pdk-vanagon#278`][pdk-vanagon-pr-278]: "(maint) Disable ansicon in VS Code", thanks to [jpogran][jpogran] and the following people who helped get it over the line ([scotje][scotje])

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-apt`][puppetlabs-apt] (`8.0.1`)
- [`puppetlabs-vcsrepo`][puppetlabs-vcsrepo] (`4.0.1`)
- [`puppetlabs-postgresql`][puppetlabs-postgresql] (`7.0.2`)
- [`puppetlabs-reboot`][puppetlabs-reboot] (`4.0.1`)
- [`puppetlabs-accounts`][puppetlabs-accounts] (`7.0.1`)
- [`puppetlabs-puppet_conf`][puppetlabs-puppet_conf] (`1.1.0`)

## Monday 22nd March

There has been a 'one off' whole company holiday granted for Monday therefore our Community Day will be pretty quiet. If there is anything specific you need, don't hesitate to reach out to us via one of our [channels](https://puppetlabs.github.io/iac/team/2021/01/20/reaching-out.html). We are all looking forward to the long weekend and spending some extra time recharging our batteries.

## Team Holidays

With St Patricks Day, a company holiday and Easter approaching, some of the team are making use of holidays to extend their breaks.
The team will be working hard in the background as always however some things may slow down, this is expected with less headcount.

## Cloud CI Update

This week we rolled out the pdk update that moves spec testing to Github Actions and removes Travis and Appveyor configurations. With this update we'll also add in the publishing workflow to tag the repository and push to the Puppet Forge, so module releases will be even easier than before. **Once all the pdksync PRs are merged, we will manage to close out another important milestone for Cloud CI.**

During the work for the multi-node testing supported we have uncovered a small issue that was related to the created firewall rule persistence in debugging sessions and we'll have a fix for this as soon as possible. Work is still [in progress](https://github.com/puppetlabs/puppetlabs-websphere_application_server/pull/223) on the [puppetlabs-websphere_application_server][puppetlabs-websphere_application_server] module and we are hopeful to find a solution soon.

## Terminology Changes

All of our terminology work is coming to a close. What this means is once it is completely finished we will start **deleting 'master' branches in our repos**. If you are pinning to this, I advise you to switch over to `main` as soon as you possibly can. This work effort has been carried out on both our modules and tools. Shout out to [David Swan][DavidSwan] for heading up this work.

## Removal of translate module dependencies

The translate module has been deprecated for some time but we have never had the time to remove it from our modules. [David Swan][DavidSwan] has been working on removing all dependencies and code related to this. An example of a PR he has been working on can be found [here](https://github.com/puppetlabs/puppetlabs-accounts/pull/373/files). This particular change will be rolled out to all of our supported modules over the next few weeks.

## DSC

Things have been quiet for the last few weeks on this front as we did a bunch of backend work to transition our test framework from Pester v4 to v5 and set up the tests to be more idiomatic.
Now that the test framework is updated we're ready to expand the test suite and boost our coverage to increase stability for future releases. **Our 1.0.0 stable release approaches!**

## Litmus relocation of inventory.yaml file

We have now started to roll the first part of the changes out to our supported modules. This change was made to the [pdk-templates#414][pdk-templates-pr-414].
A massive shout out to [Danny][Danny] who kicked off the roll out using a [pdksync][pdksync].

The remaining changes will be rolled out when all the modules recieve their template changes. The additional updates include:

- [`provision#161`][provision-pr-161]
- [`puppet_litmus#396`][litmus-pr-396]

## And thats a wrap!

That is all for this week, have a great weekend!

  [puppetlabs-apt]: https://github.com/puppetlabs/puppetlabs-apt
  [puppetlabs-vcsrepo]: https://github.com/puppetlabs/puppetlabs-vcsrepo
  [puppetlabs-postgresql]: https://github.com/puppetlabs/puppetlabs-postgresql
  [puppetlabs-reboot]: https://github.com/puppetlabs/puppetlabs-reboot
  [puppetlabs-accounts]: https://github.com/puppetlabs/puppetlabs-accounts
  [puppetlabs-puppet_conf]: https://github.com/puppetlabs/puppetlabs-puppet_conf
  [puppetlabs-websphere_application_server]: https://github.com/puppetlabs/puppetlabs-websphere_application_server
  [puppetlabs-accounts-pr-369]: https://github.com/puppetlabs/puppetlabs-accounts/pull/369
  [tuxmea]: https://github.com/tuxmea
  [puppetlabs-accounts-pr-353]: https://github.com/puppetlabs/puppetlabs-accounts/pull/353
  [LooOOooM]: https://github.com/LooOOooM
  [puppetlabs-apache-pr-2135]: https://github.com/puppetlabs/puppetlabs-apache/pull/2135
  [martijndegouw]: https://github.com/martijndegouw
  [puppetlabs-apache-pr-2129]: https://github.com/puppetlabs/puppetlabs-apache/pull/2129
  [ekohl]: https://github.com/ekohl
  [puppetlabs-apache-pr-2110]: https://github.com/puppetlabs/puppetlabs-apache/pull/2110
  [puppetlabs-apt-pr-973]: https://github.com/puppetlabs/puppetlabs-apt/pull/973
  [moritz-makandra]: https://github.com/moritz-makandra
  [puppetlabs-kubernetes-pr-494]: https://github.com/puppetlabs/puppetlabs-kubernetes/pull/494
  [bitvijays]: https://github.com/bitvijays
  [puppetlabs-mysql-pr-1373]: https://github.com/puppetlabs/puppetlabs-mysql/pull/1373
  [treydock]: https://github.com/treydock
  [puppetlabs-postgresql-pr-1253]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1253
  [puppetlabs-puppet_conf-pr-140]: https://github.com/puppetlabs/puppetlabs-puppet_conf/pull/140
  [fetzerms]: https://github.com/fetzerms
  [puppetlabs-reboot-pr-284]: https://github.com/puppetlabs/puppetlabs-reboot/pull/284
  [pdk-pr-961]: https://github.com/puppetlabs/pdk/pull/961
  [hestonhoffman]: https://github.com/hestonhoffman
  [pdk-pr-957]: https://github.com/puppetlabs/pdk/pull/957
  [nkanderson]: https://github.com/nkanderson
  [scotje]: https://github.com/scotje
  [pdk-docker-pr-29]: https://github.com/puppetlabs/pdk-docker/pull/29
  [pdk-docker-pr-28]: https://github.com/puppetlabs/pdk-docker/pull/28
  [da-ar]: https://github.com/da-ar
  [pdk-docker-pr-23]: https://github.com/puppetlabs/pdk-docker/pull/23
  [cdenneen]: https://github.com/cdenneen
  [pdk-templates-pr-413]: https://github.com/puppetlabs/pdk-templates/pull/413
  [pdk-templates-pr-414]: https://github.com/puppetlabs/pdk-templates/pull/414
  [silug]: https://github.com/silug
  [pdk-vanagon-pr-280]: https://github.com/puppetlabs/pdk-vanagon/pull/280
  [pdk-vanagon-pr-278]: https://github.com/puppetlabs/pdk-vanagon/pull/278
  [jpogran]: https://github.com/jpogran
  [provision-pr-161]: https://github.com/puppetlabs/provision/pull/161
  [litmus-pr-396]: https://github.com/puppetlabs/puppet_litmus/pull/396

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
  [pdksync]:            https://github.com/puppetlabs/pdksync/
