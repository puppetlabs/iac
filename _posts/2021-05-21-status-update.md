---
layout: post
title: "2021-05-21: IAC & DevX Team Status Update"
author: sheenaajay
categories:
  - team
  - status
tags:
  - dsc
  - modules
  - tools
  - kubernetes
  - dropsonde
  - windows
  - rspec-puppet
  - releases
  - puppet_intern
---

## Community Support Day

The IAC Team processed 91 community PRs/issues across modules and tools.

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`provision#166`][provision-pr-166]: "(REPLATS-169) Add a timestamp to abs job_id", thanks to [jpartlow][jpartlow]
- [`puppetlabs-apache#2152`][puppetlabs-apache-pr-2152]: "(MODULES-11068) Allow apache::vhost ssl_honorcipherorder to take boolean parameter", thanks to [davidc][davidc]
- [`puppetlabs-apache#2150`][puppetlabs-apache-pr-2150]: "support for uri for severname with use_servername_for_filenames", thanks to [Zarne][Zarne]
- [`puppetlabs-apache#2145`][puppetlabs-apache-pr-2145]: "(MODULES-11061) mod_security custom rule functionality", thanks to [k2patel][k2patel]
- [`puppetlabs-firewall#993`][puppetlabs-firewall-pr-993]: "Fixed link to REFERENCE.md", thanks to [Samgarr][Samgarr]
- [`puppetlabs-postgresql#1266`][puppetlabs-postgresql-pr-1266]: "MODULES-11047 - Allow managing rights for PUBLIC role", thanks to [mtancoigne][mtancoigne]
- [`pdk-templates#436`][pdk-templates-pr-436]: "added more fine-grained control of custom_before_steps", thanks to [skoef][skoef]
- [`pdk-templates#434`][pdk-templates-pr-434]: "added tags to .gitlab-ci.yml.erb", thanks to [skoef][skoef]
- [`puppet-strings#266`][puppet-strings-pr-266]: "Only set tasks = true when parsing plans.", thanks to [binford2k][binford2k]

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-stdlib`][puppetlabs-stdlib] (`7.1.0`)
- [`puppetlabs-apache`][puppetlabs-apache] (`6.1.0`)

The following gems were released this week:

- [`puppet-strings`][puppet-strings] (`2.7.0`)
- [`puppet-modulebuilder`][puppet-modulebuilder] (`0.3.0`)
- [`rspec-puppet`][rspec-puppet] (`2.9.0`)

  [puppetlabs-stdlib]: https://github.com/puppetlabs/puppetlabs-stdlib
  [puppetlabs-apache]: https://github.com/puppetlabs/puppetlabs-apache
  [puppetlabs-dsc]: https://github.com/puppetlabs/puppetlabs-dsc
  [provision-pr-166]: https://github.com/puppetlabs/provision/pull/166
  [jpartlow]: https://github.com/jpartlow
  [puppetlabs-apache-pr-2152]: https://github.com/puppetlabs/puppetlabs-apache/pull/2152
  [davidc]: https://github.com/davidc
  [puppetlabs-apache-pr-2150]: https://github.com/puppetlabs/puppetlabs-apache/pull/2150
  [Zarne]: https://github.com/Zarne
  [puppetlabs-apache-pr-2145]: https://github.com/puppetlabs/puppetlabs-apache/pull/2145
  [k2patel]: https://github.com/k2patel
  [puppetlabs-firewall-pr-993]: https://github.com/puppetlabs/puppetlabs-firewall/pull/993
  [Samgarr]: https://github.com/Samgarr
  [puppetlabs-postgresql-pr-1266]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1266
  [mtancoigne]: https://github.com/mtancoigne
  [pdk-templates-pr-436]: https://github.com/puppetlabs/pdk-templates/pull/436
  [skoef]: https://github.com/skoef
  [pdk-templates-pr-434]: https://github.com/puppetlabs/pdk-templates/pull/434
  [puppet-strings-pr-266]: https://github.com/puppetlabs/puppet-strings/pull/266
  [binford2k]: https://github.com/binford2k
  [puppet-modulebuilder]: https://rubygems.org/gems/puppet-modulebuilder
  [puppet-strings]: https://rubygems.org/gems/puppet-strings
  [rspec-puppet]: https://rubygems.org/gems/rspec-puppet

## Life of an intern at Puppet

[Disha][Disha] continues her journey at Puppet and [here](https://puppetlabs.github.io/iac/docs/life_of_intern) you can find the last updates of ** Life of an intern at Puppet ** .

## Spring Cleaning Guide

[Raphaël Pinson](https://dev.to/raphink) of [Camptocamp](https://www.camptocamp.com) fame has published a guide to [Cleaning up Puppet Code](https://dev.to/camptocamp-ops/cleaning-up-puppet-code-4da2) using puppet-lint, the PDK and unused code detection using their puppet-ghostbuster project.
Check it out for a breath of fresh air in your control repo.

## DevX: Templates and rspec-puppet

We're making good progress on the limited availability release of the new templating feature for PDK and are still on track to have this available at the end of the month.
Alongside that, we released version `v2.9.0` of `rspec-puppet`.
Many thanks to [David Schmitt][DavidSchmitt] for his help in getting this over the line!

## Kubernetes 1.20 and Sonobuoy Conformance Testing

We are very close to finish the certification for our k8s module with 1.20 version.
First we added support for the new version and now we're working with AWS for Sonobuoy k8s conformance testing, if you're interested in how we're doing check out [the PR](https://github.com/puppetlabs/puppetlabs-kubernetes/pull/512)!

## Dropsonde transition to the IAC Team

This week was really interesting.
[Dropsonde](https://dev.to/binford2k/telemetry-that-doesn-t-suck-na2) is a flexible framework for collecting metrics from puppet installations.
Deploying this will provide insight into how modules are used for the community.
We have just finished the Level of Effort and have broken down the work into [small tasks](https://tickets.puppetlabs.com/browse/IAC-1608) to enable a successful transition.
We have now started a deep dive and 2 PRs have been submitted to the [dropsonde repo](https://github.com/puppetlabs/dropsonde).
Will will continue to provide weekly updates on the hottest tool currently on our plate!

## DSC: Going Live

We have some exciting news for you about Puppet's support for the PowerShell DSC configuration framework for Windows.
In short, content from the PowerShell Gallery will simply appear on the Puppet Forge and can be added to your Puppetfile and used just like any other Puppet module.
This makes it by far the most flexible and maintainable iteration of DSC integration we've ever had.
Pick and choose whatever DSC Resources you want and get all the VSCode IntelliSense magic you've come to expect.
Read more on [the puppet blog](https://puppet.com/blog/powershell-dsc-the-next-generation/)

## Windows Long Paths in Ruby

During our ongoing work for integrating with DSC, we stubbed our toes hard against an old, familiar frenemy in ruby: long path support on Windows.
Windows has supported paths longer than 260 characters for _years_ now, but Ruby couldn't ever take advantage of that.
If you needed long file paths in your code, you had to specify the LFN NTFS syntax (prepending`\\?\`) which was... not very friendly or memorable.
Luckily however, [Gabriel Nagy][gabi] submitted a [patch to core ruby][ruby-lfn-patch] which was merged this week which just solves this problem for everyone (who uses a release of ruby which includes the patch)!
As long as your modern Windows systems are configured for long path support, Ruby will now happily work with 300+ character paths, no sweat!
This is _huge_ for Windows users and developers on Ruby, which also means Windows users and developers of Puppet!
We really can't overstate what a thorn in our foot this has been how grateful we are to Gabi for resolving it.

  [gabi]: https://github.com/GabrielNagy
  [ruby-lfn-patch]: https://github.com/ruby/ruby/pull/4505
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
