---
layout: post
title: "2021-08-02: IAC & DevX Team Status Update"
author: "ia-content"
categories:
  - team
  - status
tags:
- rspec-puppet
- puppet-lint
- dsc
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-apache#2174`][puppetlabs-apache-pr-2174]: "(MODULES-11075) Improve future version handling for RHEL", thanks to [mwhahaha][mwhahaha] and the following people who helped get it over the line ([ekohl][ekohl])
- [`puppetlabs-apache#2165`][puppetlabs-apache-pr-2165]: "(maint) Fix puppet-strings docs on apache::vhost", thanks to [ekohl][ekohl]
- [`puppetlabs-apache#2164`][puppetlabs-apache-pr-2164]: "Allow custom userdir directives", thanks to [hunner][hunner] and the following people who helped get it over the line ([ekohl][ekohl])
- [`puppetlabs-apache#2157`][puppetlabs-apache-pr-2157]: "Add feature to reload apache service when content of ssl files has changed", thanks to [timdeluxe][timdeluxe] and the following people who helped get it over the line ([ekohl][ekohl])
- [`puppetlabs-apt#993`][puppetlabs-apt-pr-993]: "apt::source: pass the weak_ssl param to apt::key", thanks to [kenyon][kenyon]
- [`puppetlabs-apt#991`][puppetlabs-apt-pr-991]: "[MODULES-9695] - Add support for signed-by in source entries", thanks to [johanfleury][johanfleury]
- [`puppetlabs-firewall#998`][puppetlabs-firewall-pr-998]: "add compatibility with Rocky Linux", thanks to [vchepkov][vchepkov]
- [`puppetlabs-kubernetes#528`][puppetlabs-kubernetes-pr-528]: "Support for kubernetes dashboard version 2.0.0 and onwards", thanks to [danifr][danifr]
- [`puppetlabs-postgresql#1282`][puppetlabs-postgresql-pr-1282]: "Do not add version component to repo definition", thanks to [weastur][weastur] and [x1e][x1e]
- [`puppetlabs-tomcat#454`][puppetlabs-tomcat-pr-454]: "Accept Datatype Sensitive for Secrets", thanks to [cocker-cc][cocker-cc]
- [`facterdb#175`][facterdb-pr-175]: "Release 1.7.0", thanks to [bastelfreak][bastelfreak] and the following people who helped get it over the line ([ekohl][ekohl])
- [`facterdb#174`][facterdb-pr-174]: "Fixes #173 - Add AlmaLinux", thanks to [maccelf][maccelf]
- [`facterdb#171`][facterdb-pr-171]: "Introduce cache to speed things up and cleanup method", thanks to [lzap][lzap] and the following people who helped get it over the line ([ekohl][ekohl], [bastelfreak][bastelfreak])
- [`rspec-puppet-facts#131`][rspec-puppet-facts-pr-131]: "Move facterversion_obj declaration out of the loop", thanks to [ekohl][ekohl]
- [`rspec-puppet-facts#130`][rspec-puppet-facts-pr-130]: "release 2.0.2", thanks to [bastelfreak][bastelfreak]
- [`rspec-puppet-facts#129`][rspec-puppet-facts-pr-129]: "Implement github action testing and codecov coverage reporting", thanks to [bastelfreak][bastelfreak]
- [`iac#286`][iac-pr-286]: "Bump addressable from 2.7.0 to 2.8.0", thanks to [dependabot[bot]][dependabot[bot]]
- [`litmus#24`][litmus-pr-24]: "Bump addressable from 2.7.0 to 2.8.0", thanks to [dependabot[bot]][dependabot[bot]]
- [`litmusimage#33`][litmusimage-pr-33]: "Adds Rocky Linux & Alma Linux", thanks to [fuero][fuero]
- [`pdk-templates#441`][pdk-templates-pr-441]: "Run validation steps prior to the matrix build", thanks to [ekohl][ekohl]
- [`puppet-strings#285`][puppet-strings-pr-285]: "(FIXUP) Check for nil before injecting provider param into Types", thanks to [scotje][scotje]
- [`puppetlabs_spec_helper#340`][puppetlabs_spec_helper-pr-340]: "Use Rubocop's Github Actions formatter if possible", thanks to [ekohl][ekohl] and the following people who helped get it over the line ([bastelfreak][bastelfreak])

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-apt`][puppetlabs-apt] (`8.1.0`)
- [`puppetlabs-apache`][puppetlabs-apache] (`6.4.0`)
- [`puppetlabs-firewall`][puppetlabs-firewall] (`3.1.0`)
- [`puppetlabs-mysql`][puppetlabs-mysql] (`12.0.0`)
- [`puppetlabs-tomcat`][puppetlabs-tomcat] (`6.0.0`)
- [`puppetlabs-kubernetes`][puppetlabs-kubernetes] (`6.2.0`)

The following gems were released this week:

- [`puppet-lint`][puppet-lint] (`2.5.0`)
- [`rspec-puppet`][rspec-puppet] (`2.10.0`)
- [`puppetlabs_spec_helper`][puppetlabs_spec_helper] (`4.0.0`)


  [puppetlabs-apt]: https://github.com/puppetlabs/puppetlabs-apt
  [puppetlabs-apache]: https://github.com/puppetlabs/puppetlabs-apache
  [puppetlabs-firewall]: http://github.com/puppetlabs/puppetlabs-firewall
  [puppetlabs-mysql]: http://github.com/puppetlabs/puppetlabs-mysql
  [puppetlabs-tomcat]: https://github.com/puppetlabs/puppetlabs-tomcat
  [puppetlabs-kubernetes]: https://github.com/puppetlabs/puppetlabs-kubernetes
  [puppetlabs_spec_helper]: https://github.com/puppetlabs/puppetlabs_spec_helper
  [puppetlabs-apache-pr-2174]: https://github.com/puppetlabs/puppetlabs-apache/pull/2174
  [mwhahaha]: https://github.com/mwhahaha
  [ekohl]: https://github.com/ekohl
  [puppetlabs-apache-pr-2165]: https://github.com/puppetlabs/puppetlabs-apache/pull/2165
  [puppetlabs-apache-pr-2164]: https://github.com/puppetlabs/puppetlabs-apache/pull/2164
  [hunner]: https://github.com/hunner
  [puppetlabs-apache-pr-2157]: https://github.com/puppetlabs/puppetlabs-apache/pull/2157
  [timdeluxe]: https://github.com/timdeluxe
  [puppetlabs-apt-pr-993]: https://github.com/puppetlabs/puppetlabs-apt/pull/993
  [kenyon]: https://github.com/kenyon
  [puppetlabs-apt-pr-991]: https://github.com/puppetlabs/puppetlabs-apt/pull/991
  [johanfleury]: https://github.com/johanfleury
  [puppetlabs-firewall-pr-998]: https://github.com/puppetlabs/puppetlabs-firewall/pull/998
  [vchepkov]: https://github.com/vchepkov
  [puppetlabs-kubernetes-pr-528]: https://github.com/puppetlabs/puppetlabs-kubernetes/pull/528
  [danifr]: https://github.com/danifr
  [puppetlabs-postgresql-pr-1282]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1282
  [weastur]: https://github.com/weastur
  [x1e]: https://github.com/x1e
  [puppetlabs-tomcat-pr-454]: https://github.com/puppetlabs/puppetlabs-tomcat/pull/454
  [cocker-cc]: https://github.com/cocker-cc
  [facterdb-pr-175]: https://github.com/voxpupuli/facterdb/pull/175
  [bastelfreak]: https://github.com/bastelfreak
  [facterdb-pr-174]: https://github.com/voxpupuli/facterdb/pull/174
  [maccelf]: https://github.com/maccelf
  [facterdb-pr-171]: https://github.com/voxpupuli/facterdb/pull/171
  [lzap]: https://github.com/lzap
  [rspec-puppet-facts-pr-131]: https://github.com/voxpupuli/rspec-puppet-facts/pull/131
  [rspec-puppet-facts-pr-130]: https://github.com/voxpupuli/rspec-puppet-facts/pull/130
  [rspec-puppet-facts-pr-129]: https://github.com/voxpupuli/rspec-puppet-facts/pull/129
  [iac-pr-286]: https://github.com/puppetlabs/iac/pull/286
  [litmus-pr-24]: https://github.com/puppetlabs/litmus/pull/24
  [litmusimage-pr-33]: https://github.com/puppetlabs/litmusimage/pull/33
  [fuero]: https://github.com/fuero
  [pdk-templates-pr-441]: https://github.com/puppetlabs/pdk-templates/pull/441
  [puppet-strings-pr-285]: https://github.com/puppetlabs/puppet-strings/pull/285
  [scotje]: https://github.com/scotje
  [puppetlabs_spec_helper-pr-340]: https://github.com/puppetlabs/puppetlabs_spec_helper/pull/340
  [puppet-lint]: https://github.com/puppetlabs/puppet-lint
  [rspec-puppet]: https://github.com/puppetlabs/rspec-puppet

## Puppet.Dsc Stable Release!

This week we pushed our [Puppet.Dsc PowerShell module][dsc-repo] to the [PowerShell Gallery at version `1.0.0`][dsc-gallery]!
This represents more than a year of work bringing us confidence and stability in the auto-generated modules which Puppetize PowerShell DSC Resources.
That done, not much _actually_ changed in this release - a _ton_ of added testing and validation, but the features were already very solid.
As always we'll continue to take bug reports and address them but our attention turns now to the long-promised automation;
We're working through the auto-publishing of PowerShell modules with DSC Resources to the Puppet Forge!
Very soon, there will be less than a 24 delay between when a new module (or new version of an existing module) with DSC Resources lands on the PowerShell Gallery and when it arrives, Puppetized, on the Forge!

## `rpsec-puppet`, `puppet-lint` moved to `puppetlabs` namespace

We have moved `puppet-lint`, `rspec-puppet` to the namespace and released `puppet-lint` `2.5.0` and `rspec-puppet` `2.10.0`. 
This will help facilitate more frequent releases of these gems in the future.

## Dropsonde update

The IAC team have completed all development tasks on both the Dropsonde module and Gem. 
Next, the team will be working on getting both module and gem package up as part of Puppet server.

  [dsc-repo]: https://github.com/puppetlabs/Puppet.Dsc
  [dsc-gallery]: https://www.powershellgallery.com/packages/Puppet.Dsc/1.0.0

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
