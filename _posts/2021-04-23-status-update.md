---
layout: post
title: "2021-04-23: IAC & DevX Team Status Update"
author: da-ar
categories:
  - team
  - status
tags:
  - puppet-camp
  - litmus
  - bolt
  - facter
  - cloud-ci
  - rsapi
  - devx
  - dsc
---

##  Now in technicolor

Puppet Camp "Become a better developer" took place last week, and in case you missed it you can [watch all the talks on YouTube][all-talks];
IAC Team members [David Schmitt][DavidSchmitt] and [James Pogran][James] providing 2 of the 6 talks.
Learn about ["Operational Verification" from David][davids-talk] or ramp up your skills using [Puppet VS Code from James][jamesp-talk]

## Community Day Triage Stats

A few members of the team were unwell this week but the rest managed to process a total of 32 issues and PRs across our modules and tools repos.

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-apache#2138`][puppetlabs-apache-pr-2138]: "Fix HEADER* and README* wildcards in IndexIgnore", thanks to [keto][keto]
- [`puppetlabs-apt#985`][puppetlabs-apt-pr-985]: "apt::mark: fix docs", thanks to [kenyon][kenyon]
- [`puppetlabs-firewall#986`][puppetlabs-firewall-pr-986]: "Update README.md", thanks to [arjenz][arjenz]
- [`puppetlabs-haproxy#477`][puppetlabs-haproxy-pr-477]: "Fix 'option' entry name in option_order hash", thanks to [antaflos][antaflos]
- [`puppetlabs-java#476`][puppetlabs-java-pr-476]: "allow v5.x of puppet/archive", thanks to [bastelfreak][bastelfreak]
- [`puppetlabs-mysql#1378`][puppetlabs-mysql-pr-1378]: "Fix: Puppet Unknown variable: 'mysql::params::exec_path'", thanks to [JvGinkel][JvGinkel]
- [`puppetlabs-ntp#615`][puppetlabs-ntp-pr-615]: "Allow setting user and group permissions of the NTP logfile", thanks to [Kristijan][Kristijan]
- [`puppetlabs-stdlib#1176`][puppetlabs-stdlib-pr-1176]: "Fix typo in validate_ipv6_address function", thanks to [nbarrientos][nbarrientos]
- [`puppetlabs-stdlib#1173`][puppetlabs-stdlib-pr-1173]: "pw_hash: add support for bcrypt variants", thanks to [kjetilho][kjetilho]
- [`community_management#68`][community_management-pr-68]: "Added back the ability to manage labels on multiple repos", thanks to [yachub][yachub]
- [`dependency_checker#25`][dependency_checker-pr-25]: "Report status with exit-code", thanks to [smortex][smortex]
- [`litmusimage#30`][litmusimage-pr-30]: "Add BASE_IMAGE_TAG=${TAG} instruction", thanks to [gavindidrichsen][gavindidrichsen]
- [`pdk#1028`][pdk-pr-1028]: "(maint) Mark stale issues", thanks to [jpogran][jpogran]
- [`pdk-docker#24`][pdk-docker-pr-24]: "Restrict image to non-root user", thanks to [cdenneen][cdenneen] and the following people who helped get it over the line ([nkanderson][nkanderson])
- [`pdk-templates#429`][pdk-templates-pr-429]: "Misc cleanup", thanks to [jeffbyrnes][jeffbyrnes]
- [`pdk-templates#423`][pdk-templates-pr-423]: "(maint) Update Gitpod to Puppet VSCode Extension to 1.2.0", thanks to [jpogran][jpogran]
- [`pdk-vanagon#283`][pdk-vanagon-pr-283]: "(VANAGON-85) Move platform definitions into core vanagon. Inherit def…", thanks to [jackie-kinsler][jackie-kinsler]
- [`puppet-strings#272`][puppet-strings-pr-272]: "Update CODEOWNERS", thanks to [binford2k][binford2k]
- [`puppet_litmus#407`][puppet_litmus-pr-407]: "(maint) Update bolt requirement to include 3.x", thanks to [beechtom][beechtom]
- [`ruby-pwsh#122`][ruby-pwsh-pr-122]: "feat: adding in paths for PowerShell 7 install", thanks to [n3snah][n3snah]
- [`ruby-pwsh#118`][ruby-pwsh-pr-118]: "(Maint) Ensure canonicalize correctly compares sorted hashes", thanks to [Hvid][Hvid]
- [`rspec-puppet#823`][rspec-puppet-pr-823]: "Added support for regexp arguments to Sensitive", thanks to [tiandrey][tiandrey]
- [`rspec-puppet#819`][rspec-puppet-pr-819]: "Handle all auto*, not just autorequire", thanks to [ekohl][ekohl]

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-stdlib`][puppetlabs-stdlib] (`7.0.1`)
- [`puppetlabs-concat`][puppetlabs-concat] (`7.0.1`)
- [`puppetlabs-ntp`][puppetlabs-ntp] (`9.0.1`)
- [`puppetlabs-apt`][puppetlabs-apt] (`8.0.2`)
- [`puppetlabs-java`][puppetlabs-java] (`7.0.1`)
- [`puppetlabs-inifile`][puppetlabs-inifile] (`5.0.1`)
- [`puppetlabs-postgresql`][puppetlabs-postgresql] (`7.1.0`)
- [`puppetlabs-haproxy`][puppetlabs-haproxy] (`6.0.0`)
- [`puppetlabs-mysql`][puppetlabs-mysql] (`11.0.1`)
- [`puppetlabs-reboot`][puppetlabs-reboot] (`4.0.2`)
- [`puppetlabs-chocolatey`][puppetlabs-chocolatey] (`6.0.1`)
- [`puppetlabs-accounts`][puppetlabs-accounts] (`7.0.2`)
- [`puppetlabs-ibm_installation_manager`][puppetlabs-ibm_installation_manager] (`3.0.1`)

  [puppetlabs-stdlib]: https://github.com/puppetlabs/puppetlabs-stdlib
  [puppetlabs-concat]: https://github.com/puppetlabs/puppetlabs-concat
  [puppetlabs-ntp]: https://github.com/puppetlabs/puppetlabs-ntp
  [puppetlabs-apt]: https://github.com/puppetlabs/puppetlabs-apt
  [puppetlabs-java]: https://github.com/puppetlabs/puppetlabs-java
  [puppetlabs-inifile]: https://github.com/puppetlabs/puppetlabs-inifile
  [puppetlabs-postgresql]: https://github.com/puppetlabs/puppetlabs-postgresql
  [puppetlabs-haproxy]: https://github.com/puppetlabs/puppetlabs-haproxy
  [puppetlabs-mysql]: http://github.com/puppetlabs/puppetlabs-mysql
  [puppetlabs-reboot]: https://github.com/puppetlabs/puppetlabs-reboot
  [puppetlabs-chocolatey]: https://github.com/puppetlabs/puppetlabs-chocolatey
  [puppetlabs-accounts]: https://github.com/puppetlabs/puppetlabs-accounts
  [puppetlabs-ibm_installation_manager]: https://github.com/puppetlabs/puppetlabs-ibm_installation_manager
  [puppetlabs-apache-pr-2138]: https://github.com/puppetlabs/puppetlabs-apache/pull/2138
  [keto]: https://github.com/keto
  [puppetlabs-apt-pr-985]: https://github.com/puppetlabs/puppetlabs-apt/pull/985
  [kenyon]: https://github.com/kenyon
  [puppetlabs-firewall-pr-986]: https://github.com/puppetlabs/puppetlabs-firewall/pull/986
  [arjenz]: https://github.com/arjenz
  [puppetlabs-haproxy-pr-477]: https://github.com/puppetlabs/puppetlabs-haproxy/pull/477
  [antaflos]: https://github.com/antaflos
  [puppetlabs-java-pr-476]: https://github.com/puppetlabs/puppetlabs-java/pull/476
  [bastelfreak]: https://github.com/bastelfreak
  [puppetlabs-mysql-pr-1378]: https://github.com/puppetlabs/puppetlabs-mysql/pull/1378
  [JvGinkel]: https://github.com/JvGinkel
  [puppetlabs-ntp-pr-615]: https://github.com/puppetlabs/puppetlabs-ntp/pull/615
  [Kristijan]: https://github.com/Kristijan
  [puppetlabs-stdlib-pr-1176]: https://github.com/puppetlabs/puppetlabs-stdlib/pull/1176
  [nbarrientos]: https://github.com/nbarrientos
  [puppetlabs-stdlib-pr-1173]: https://github.com/puppetlabs/puppetlabs-stdlib/pull/1173
  [kjetilho]: https://github.com/kjetilho
  [community_management-pr-68]: https://github.com/puppetlabs/community_management/pull/68
  [yachub]: https://github.com/yachub
  [dependency_checker-pr-25]: https://github.com/puppetlabs/dependency_checker/pull/25
  [smortex]: https://github.com/smortex
  [litmusimage-pr-30]: https://github.com/puppetlabs/litmusimage/pull/30
  [gavindidrichsen]: https://github.com/gavindidrichsen
  [pdk-pr-1028]: https://github.com/puppetlabs/pdk/pull/1028
  [jpogran]: https://github.com/jpogran
  [pdk-docker-pr-24]: https://github.com/puppetlabs/pdk-docker/pull/24
  [cdenneen]: https://github.com/cdenneen
  [nkanderson]: https://github.com/nkanderson
  [pdk-templates-pr-429]: https://github.com/puppetlabs/pdk-templates/pull/429
  [jeffbyrnes]: https://github.com/jeffbyrnes
  [pdk-templates-pr-423]: https://github.com/puppetlabs/pdk-templates/pull/423
  [pdk-vanagon-pr-283]: https://github.com/puppetlabs/pdk-vanagon/pull/283
  [jackie-kinsler]: https://github.com/jackie-kinsler
  [puppet-strings-pr-272]: https://github.com/puppetlabs/puppet-strings/pull/272
  [binford2k]: https://github.com/binford2k
  [puppet_litmus-pr-407]: https://github.com/puppetlabs/puppet_litmus/pull/407
  [beechtom]: https://github.com/beechtom
  [ruby-pwsh-pr-122]: https://github.com/puppetlabs/ruby-pwsh/pull/122
  [n3snah]: https://github.com/n3snah
  [ruby-pwsh-pr-118]: https://github.com/puppetlabs/ruby-pwsh/pull/118
  [Hvid]: https://github.com/Hvid
  [rspec-puppet-pr-823]: https://github.com/rodjek/rspec-puppet/pull/823
  [tiandrey]: https://github.com/tiandrey
  [rspec-puppet-pr-819]: https://github.com/rodjek/rspec-puppet/pull/819
  [ekohl]: https://github.com/ekohl

## puppet_litmus is now compatible with Bolt 3.x

A massive shout out to [Tom Beech](https://github.com/beechtom) and the Bolt team for working on testing puppet_litmus for Bolt 3.x support. It has now been released and is compatible with Bolt 3.x

## Facter 4.1.1 Release from Nights Watch team

A big thank you to the Nights Watch team, specifically, [Gheorghe Popescu][gimmyxd] and [Gabriel Nagy][GabrielNagy] for the quick turn around on the fix and release of `facter 4.1.1` which fixes the failures in [puppetlabs-haproxy][puppetlabs-haproxy] and [puppetlabs-docker][puppetlabs-docker] modules.
Additional details are available in the following tickets [IAC-1582][IAC-1582] and [FACT-3024][FACT-3024]

## Cloud CI Update

We have ported [puppetlabs-dsc_lite][puppetlabs-dsc_lite-pr178] module successfully to run on cloud CI. Porting the [puppetlabs-dsc_lite][puppetlabs-dsc_lite]  module to cloud CI will allow us to continue the support and maintenance for it by running the tests at PR level and nightly level until the new improved DSC modules is available.
We have also started the investigation for the porting of [puppetlabs-sqlserver][puppetlabs-sqlserver] module.
We have updated all our multi node modules to use the new default litmus inventory file location, wrt the latest changes in the litmus [GH-380](https://github.com/puppetlabs/puppet_litmus/issues/380).
From this week we started to work on preparing training and educational materials for cloud CI.

## Resource API: Custom Insync

We've been doing some work over the last couple of weeks to make it possible to [add custom insync handling to Resource API resources][rsapi-custom-insync-issue].
In short, this is to help with cases where the default property comparison logic in Puppet doesn't work for a use case - when you want to compare case insensitive strings or only ensure that _some_ members of a group exist (without having to specify _all_ members of that group) for example.
We're nearing completion of that work, which you can see in this [draft PR][rsapi-custom-insync-draft-pr].
If this is something you think you might find useful or have some feedback on (either the implementation or the problem we're seeking to solve), [comment on the issue][rsapi-custom-insync-issue] or drop us a line in the `#puppet-dev` channel in the community slack!

## DSC: Validation Mode Incoming

Related to the work we're doing to [enable support for custom insync in the Resource API][rsapi-custom-insync-issue], we plan to [add a new parameter to the Puppetized DSC modules][dsc-validation-mode-issue] (all the modules in the [`dsc-*` namespace on the forge][dsc-forge]).
This new parameter, `validation_mode`, will default to `property` - the existing behavior you're familiar with that relies on Puppet for property-by-property state validation and gives you coherent and useful change reporting.
It will _also_ have a new mode, `resource`, which can be used to fall back to the DSC Resource's built-in state comparison, using the `Test` method for that Resource.
This should resolve numerous problems where DSC Resources don't work as expected because of a mismatch in the Resource's API spec and what is actually returned or where Puppet can't actually do a meaningful state comparison (as in the case of subset group membership).
This new functionality is blocked on the implementation of custom insync in the Resource API and its subsequent release with upcoming versions of Puppet, but we're confident that this will provide a much-improved user experience for folks leveraging DSC Resources which are not currently as functional as we'd like.
Speaking of DSC, we're up to `71` PowerShell modules with DSC Resources which have been puppetized and [published to the forge][dsc-forge]!

## Developer Experience
​
The team has reviewed the existing PDK validate tickets and identified which ones to address first. [Ciaran] wrote an excellent document on how PDK validate works as a result of his investigations.
[David][DavidArmstrong] is continuing his work into improving the PDK packaging process and release workflow, and has some promising results.
[James] has closed the PDK survey and is collating the data for use in planning the next major version of the PDK.
​

Community member [Glenn Sarti][GlennSarti] contibuted PR https://github.com/puppetlabs/puppet-editor-services/pull/301 and is working on PR https://github.com/puppetlabs/puppet-editor-services/pull/302, which will be released in the next Puppet Extension release.
​

In case you missed it, last month we started publishing the Puppet Extension to the OpenVSX marketplace, which means you can get official releases inside VSCodium or with Gitpod.

<!-- check https://tickets.puppetlabs.com/secure/RapidBoard.jspa?rapidView=1176&quickFilter=8745 for other tickets closed out this week that should be mentioned here -->

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
  [TP]:                 https://github.com/tphoney
  [Tools]:              https://puppetlabs.github.io/iac/tools/

  [IAC-1582]:                   https://tickets.puppetlabs.com/browse/IAC-1582
  [FACT-3024]:                  https://tickets.puppetlabs.com/browse/FACT-3024
  [gimmyxd]:                    https://github.com/gimmyxd
  [GabrielNagy]:                https://github.com/GabrielNagy
  [puppetlabs-haparoxy]:        https://github.com/puppetlabs/puppetlabs-haprox
  [puppetlabs-docker]:          https://github.com/puppetlabs/puppetlabs-docker
  [puppetlabs-dsc_lite-pr178]:  https://github.com/puppetlabs/puppetlabs-dsc_lite/pull/178
  [puppetlabs-dsc_lite]:        https://github.com/puppetlabs/puppetlabs-dsc_lite
  [puppetlabs-sqlserver]:       https://github.com/puppetlabs/puppetlabs-sqlserver

  [dsc-forge]:                    https://forge.puppet.com/dsc
  [dsc-validation-mode-issue]:    https://github.com/puppetlabs/Puppet.Dsc/issues/145
  [rsapi-custom-insync-issue]:    https://github.com/puppetlabs/puppet-resource_api/issues/225
  [rsapi-custom-insync-draft-pr]: https://github.com/puppetlabs/puppet-resource_api/pull/285

  [GlennSarti]: https://github.com/glennsarti
  [all-talks]: https://www.youtube.com/playlist?list=PLV86BgbREluWevcAomxGS2Uq3GOIvm9Pl
  [davids-talk]: https://www.youtube.com/watch?v=QBZhLxj_i3Y&list=PLV86BgbREluWevcAomxGS2Uq3GOIvm9Pl&index=3
  [jamesp-talk]: https://www.youtube.com/watch?v=RT_e7kCyCH8&list=PLV86BgbREluWevcAomxGS2Uq3GOIvm9Pl&index=5
