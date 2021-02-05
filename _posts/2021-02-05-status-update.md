---
layout: post
title: "2021-02-05: IAC Team Status Update"
author: michaeltlombardi
categories:
  - team
  - status
tags:
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-docker#707`][puppetlabs-docker-pr-707]: "(docs) update README.md", thanks to [vladdoster][vladdoster]
- [`puppetlabs-kubernetes#470`][puppetlabs-kubernetes-pr-470]: "Add etcd_listen_metric_urls parameter", thanks to [treydock][treydock]
- [`puppetlabs-kubernetes#462`][puppetlabs-kubernetes-pr-462]: "Allow tmp_directory to be changed", thanks to [treydock][treydock]
- [`puppetlabs-postgresql#1226`][puppetlabs-postgresql-pr-1226]: "Fix postgresql::sql task when password is not set", thanks to [smortex][smortex]
- [`puppetlabs-postgresql#1225`][puppetlabs-postgresql-pr-1225]: "Clean up globals logic to support CentOS 8 stream", thanks to [ekohl][ekohl]
- [`puppetlabs-postgresql#1230`](https://github.com/puppetlabs/puppetlabs-postgresql/pull/1230): "(bug) fix systemd daemon-reload order when updating service files", thanks to [vchepkov](https://github.com/vchepkov) and [ekohl][ekohl] for raising the issue and great cooperation on the PR!
- [`pdk#939`][pdk-pr-939]: "(MAINT) Disable parallel unit package testing specs on Windows", thanks to [scotje][scotje]
- [`pdk#932`][pdk-pr-932]: "Add ability to generate functions", thanks to [logicminds][logicminds]
- [`pdk-vanagon#274`][pdk-vanagon-pr-274]: "Revert "Only install system_tests gem on the main ruby"", thanks to [scotje][scotje]
- [`ruby-pwsh#101`][ruby-pwsh-pr-101]: "(MAINT) Place nil check when assigning is_same", thanks to [bwilcox][bwilcox]
- [`ruby-pwsh#96`][ruby-pwsh-pr-96]: "(MAINT) Ensure is_same check works for nil manifest values", thanks to [bwilcox][bwilcox]

Please swing by our [office hours on Monday](https://puppet.com/community/office-hours/) on Slack if you want to directly contact us about anything module related.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-stdlib`][puppetlabs-stdlib] (`6.6.0`)
- [`puppetlabs-docker`][puppetlabs-docker] (`3.13.1`)
- [`puppetlabs-pwshlib`][puppetlabs-pwshlib] (`0.7.3`)

## Cloud CI

This week the development work was focused on the automated release preparation and multi-node testing.

The tempate for the automated module release preparation in `pdk-templates` is currently [undergoing testing][pdk-templates-pr-394] and, hopefully, by the end of next week a pdksync across all our supported modules will ease releases in the future.

For a quick preview on multi-node testing, [take a look at this NTP pull request][puppetlabs-ntp-pr-603] that deploys two VMs on GCP with different roles and runs an integration test suite to check communications.

## DSC

Over the last two weeks we've released several small iterative improvements to our [`Puppet.Dsc` PowerShell Module][dsc-pwsh] and the [`puppetlabs-pwshlib` Puppet module][puppetlabs-pwshlib] as we draw towards closing out our [first major milestone][dsc-milestone-1].
As part of this effort, we published two new blog posts; one on [troubleshooting Puppetized DSC modules][dsc-troubleshooting-blog] and another by [Paula][Paula] on [migrating from `puppetlabs-dsc` to the Puppetized `dsc-*` modules][dsc-migration-blog].

The troubleshooting document has already paid off, leading to the filing of excellent bug reports and even a bugfix PR independent of the IAC team by [Bill Wilcox][bwilcox].
It also led to a pairing session with [Jordan Bush][jordanbush] where he was able to discover and [file a repro for a bug in `xDnsServerDiagnostics`][dsc-bug-repro] in the [xDnsServer PowerShell module][dsc-xdnsserver].

We're excited to see the adoption of the Puppetized modules in the `dsc` namespace on the Forge grow, especially now that we've cut down on some of the guess work for migrating from the older `puppetlabs-dsc` module.
The last remaining tasks in our first milestone are administrative, so next week will see us tackling [issues in the next milestone][dsc-milestone-2] which should set us up for a `1.0.0` release.

<!-- Reference Links -->
[puppetlabs-ntp-pr-603]:         https://github.com/puppetlabs/puppetlabs-ntp/pull/603
[pdk-templates-pr-394]:          https://github.com/puppetlabs/pdk-templates/pull/394
[dsc-pwsh]:                      https://www.powershellgallery.com/packages/Puppet.Dsc
[dsc-milestone-1]:               https://github.com/puppetlabs/Puppet.Dsc/milestone/3
[dsc-milestone-2]:               https://github.com/puppetlabs/Puppet.Dsc/milestone/1
[dsc-troubleshooting-blog]:      https://puppetlabs.github.io/iac/2021/01/25/troubleshooting-puppetized-dsc-modules.html
[dsc-migration-blog]:            https://puppetlabs.github.io/iac/dsc/puppet/modules/2021/01/26/converting-puppetized-dsc-modules.html
[dsc-bug-repro]:                 https://github.com/dsccommunity/xDnsServer/issues/133
[dsc-xdnsserver]:                https://www.powershellgallery.com/packages/xDnsServer
[jordanbush]:                    https://github.com/jordanbush
[puppetlabs-pwshlib]:            https://forge.puppet.com/modules/puppetlabs/pwshlib
[puppetlabs-stdlib]:             https://github.com/puppetlabs/puppetlabs-stdlib
[puppetlabs-docker]:             https://github.com/puppetlabs/puppetlabs-docker
[puppetlabs-docker-pr-707]:      https://github.com/puppetlabs/puppetlabs-docker/pull/707
[vladdoster]:                    https://github.com/vladdoster
[puppetlabs-kubernetes-pr-470]:  https://github.com/puppetlabs/puppetlabs-kubernetes/pull/470
[treydock]:                      https://github.com/treydock
[puppetlabs-kubernetes-pr-462]:  https://github.com/puppetlabs/puppetlabs-kubernetes/pull/462
[puppetlabs-postgresql-pr-1226]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1226
[smortex]:                       https://github.com/smortex
[puppetlabs-postgresql-pr-1225]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1225
[ekohl]:                         https://github.com/ekohl
[pdk-pr-939]:                    https://github.com/puppetlabs/pdk/pull/939
[scotje]:                        https://github.com/scotje
[pdk-pr-932]:                    https://github.com/puppetlabs/pdk/pull/932
[logicminds]:                    https://github.com/logicminds
[pdk-vanagon-pr-274]:            https://github.com/puppetlabs/pdk-vanagon/pull/274
[ruby-pwsh-pr-101]:              https://github.com/puppetlabs/ruby-pwsh/pull/101
[bwilcox]:                       https://github.com/bwilcox
[ruby-pwsh-pr-96]:               https://github.com/puppetlabs/ruby-pwsh/pull/96
[Adrian]:                        https://github.com/adrianiurca
[Ben]:                           https://github.com/binford2k
[Ciaran]:                        https://github.com/sanfrancrisko
[Daiana]:                        https://github.com/daianamezdrea
[Danny]:                         https://github.com/carabasdaniel
[DavidSchmitt]:                  https://github.com/DavidS
[DavidSwan]:                     https://github.com/david22swan
[Disha]:                         https://github.com/Disha-maker
[Lore]:                          https://github.com/lionce
[Michael]:                       https://github.com/michaeltlombardi
[Paula]:                         https://github.com/pmcmaw
[Sheena]:                        https://github.com/sheenaajay
[Supported Modules]:             https://puppetlabs.github.io/iac/modules/
[TP]:                            https://github.com/tphoney
[Tools]:                         https://puppetlabs.github.io/iac/tools/
