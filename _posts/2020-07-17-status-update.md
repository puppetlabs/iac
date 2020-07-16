---
layout: post
title: "17th July 2020: IAC Team Status Update"
author: sanfrancrisko
categories:
  - team
  - status
tags:
  - releases
  - pdk
  - shoutouts
  - security
  - rspec-puppet
  - java
  - inifile
  - docker
---

It's Friday - time for another status update from the IAC Team!
Here's an overview of some of the work we and the community have been up to recently:

## Module Releases from IAC Team
We've just one module released this week:
- [puppetlabs/docker][docker-forge][`3.10.2`][docker-3-10-2]

## Community Contributions
We've had plenty of great community contributions this week:
- [`puppetlabs-docker#631`][docker-631]: [awegmann][awegmann] has spotted a few missing fixes for incorrect parameter positions in docker_compose from an earlier effort and tidied them up for us.
Many thanks [awegmann][awegmann] for spotting and fixing!
- [`puppetlabs-inifile#405`][inifile-405]: Thanks to [mmarod][mmarod] for this enhancement - with the `delete_if_empty` parameter now available, we can remove keys from an inifile, should there be no value assigned to it.
This keeps things a lot neater! :)
- [`puppetlabs-java#433`][java-433]: A big thank you to [timdeluxe][timdeluxe] for your first contribution to Puppet!
This is a great enhancement as a first contribution - the ability to install SAP's implementation of JVM/JDK.

## New releases of rspec-puppet and PDK
The `default_env` method was removed in the release of Puppet Agent versions [`6.17.0`][agent_6_17_0] and [`5.5.21`][agent_5_5_21].
This has had a knock-on effect in [`rspec-puppet`][rspec-puppet] and the [`pdk`][pdk], so there have been two new releases we want to draw your attention to:
### rspec-puppet 2.7.10
Many thanks to [sgnn7][sgnn7] for the quick turnaround and fix provided in [rspec-puppet#796][rspec-puppet-796].
Also, thanks to [scotje][scotje] for getting the fix reviewed, merged and version `2.7.10` of [`rspec-puppet`][rspec-puppet] released so quickly.
### PDK 0.18.0.1
Again, many thanks to [natemccurdy][natemccurdy] for getting a fix available to the [pdk][pdk] in [pdk#891][pdk-891] so quickly.
Thanks to [joshcooper][joshcooper] for his help during the review process and [scotje][scotje] for merging and kicking off the PDK release.

## Red or Blue Team?
We'd like to congratulate [daianamezdrea][daianamezdrea] for being accepted to study an MSc in Cyber Security next term!
[Daiana][daianamezdrea] recently graduated with flying colours and became a fully fledged member of the IAC Team - it's been quite a year of accomplishments!
Given her track record on the team, this past year, and her excellent graduation results, we've no doubt she'll be incredibly successful with her MSc too.
We look forward to increasing the awareness of security on the team even further - an ever increasing skill requirement in modern software development.
Just take a look at two of the major security issues landing this week to prove this point: [CVE-2020-1350][CVE-2020-1350] and [CVE-2020-6287][CVE-2020-6287].


[agent_6_17_0]:     https://puppet.com/docs/puppet/6.17/release_notes_puppet.html#release_notes_puppet_x-17-0
[agent_5_5_21]:     https://puppet.com/docs/puppet/5.5/release_notes.html#puppet-5521
[rspec-puppet]:     https://github.com/rodjek/rspec-puppet
[pdk]:              https://github.com/puppetlabs/pdk
[rspec-puppet-796]: https://github.com/rodjek/rspec-puppet/pull/797
[sgnn7]:            https://github.com/sgnn7
[scotje]:           https://github.com/scotje
[pdk-891]:          https://github.com/puppetlabs/pdk/pull/891
[natemccurdy]:      https://github.com/natemccurdy
[joshcooper]:       https://github.com/joshcooper
[daianamezdrea]:    https://github.com/daianamezdrea
[CVE-2020-1350]:    https://blog.rapid7.com/2020/07/14/windows-dns-server-remote-code-execution-vulnerability-cve-2020-1350-what-you-need-to-know/
[CVE-2020-6287]:    https://blog.rapid7.com/2020/07/14/pay-attention-to-your-sap-security/
[docker-forge]:     https://forge.puppet.com/puppetlabs/docker
[docker-3-10-2]:    https://forge.puppet.com/puppetlabs/docker/changelog#v3102-2020-07-16
[docker]:           https://github.com/puppetlabs/puppetlabs-docker
[docker-631]:       https://github.com/puppetlabs/puppetlabs-docker/pull/631
[awegmann]:         https://github.com/awegmann
[java]:             https://github.com/puppetlabs/puppetlabs-java
[java-433]:         https://github.com/puppetlabs/puppetlabs-java/pull/433
[timdeluxe]:        https://github.com/timdeluxe
[inifile]:          https://github.com/puppetlabs/puppetlabs-inifile
[inifile-405]:      https://github.com/puppetlabs/puppetlabs-inifile/pull/405
[mmarod]:           https://github.com/mmarod