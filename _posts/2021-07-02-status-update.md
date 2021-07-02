---
layout: post
title: "2021-07-02: IAC & DevX Team Status Update"
author: "binford2k"
categories:
  - team
  - status
tags:
  - devx
  - community
  - dsc
  - k8s
  - cloudci
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-docker#740`][puppetlabs-docker-pr-740]: "Allow management of the docker-ce-cli package", thanks to [kenyon][kenyon]
- [`puppetlabs-iis#325`][puppetlabs-iis-pr-325]: "Correct error handling in require ruby-pwsh", thanks to [benningm][benningm]
- [`puppetlabs-inifile#454`][puppetlabs-inifile-pr-454]: "Accept Datatype Sensitive", thanks to [cocker-cc][cocker-cc]
- [`puppetlabs-java_ks#373`][puppetlabs-java_ks-pr-373]: "Accept Datatype Sensitive for Secrets", thanks to [cocker-cc][cocker-cc]
- [`puppetlabs-java_ks#372`][puppetlabs-java_ks-pr-372]: "Fix fingerprint comparison", thanks to [kdehairy][kdehairy] and the following people who helped get it over the line ([creativefre][creativefre])

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-docker`][puppetlabs-docker] (`4.1.0`)
- [`puppetlabs-inifile`][puppetlabs-inifile] (`5.1.0`)
- [`puppetlabs-java_ks`][puppetlabs-java_ks] (`4.1.0`)
- [`puppetlabs-iis`][puppetlabs-iis] (`8.0.3`)
- [`puppetlabs-helm`][puppetlabs-helm] (`4.0.0`)
- [`ruby-pwsh`][ruby-pwsh] (`0.9.0`)
- [`Puppet.Dsc`][Puppet.Dsc] (`0.6.0`)

  [puppetlabs-docker]: https://github.com/puppetlabs/puppetlabs-docker
  [puppetlabs-inifile]: https://github.com/puppetlabs/puppetlabs-inifile
  [puppetlabs-java_ks]: https://github.com/puppetlabs/puppetlabs-java_ks
  [puppetlabs-iis]: https://github.com/puppetlabs/puppetlabs-iis
  [puppetlabs-helm]: https://github.com/puppetlabs/puppetlabs-helm
  [ruby-pwsh]: https://github.com/puppetlabs/ruby-pwsh
  [Puppet.Dsc]: https://github.com/puppetlabs/Puppet.Dsc
  [puppetlabs-docker-pr-740]: https://github.com/puppetlabs/puppetlabs-docker/pull/740
  [kenyon]: https://github.com/kenyon
  [puppetlabs-iis-pr-325]: https://github.com/puppetlabs/puppetlabs-iis/pull/325
  [benningm]: https://github.com/benningm
  [puppetlabs-inifile-pr-454]: https://github.com/puppetlabs/puppetlabs-inifile/pull/454
  [cocker-cc]: https://github.com/cocker-cc
  [puppetlabs-java_ks-pr-373]: https://github.com/puppetlabs/puppetlabs-java_ks/pull/373
  [puppetlabs-java_ks-pr-372]: https://github.com/puppetlabs/puppetlabs-java_ks/pull/372
  [kdehairy]: https://github.com/kdehairy
  [creativefre]: https://github.com/creativefre

## Community Day

We had a great community day this week and processed 28 issues and PRs across our supported modules and tooling.
And a shout out again to [cocker-cc][cocker-cc] for their continued engagement in adding `Sensitive` Datatype support to more modules.


## Kubernetes Conformance

We're very happy to announce that we finished running the conformance tests for v1.20 on our kubernetes module and we're just one step a way of the official news.
It was a long journey with a lot of lessons, first about k8s components and workflow, but also about how to approach each situation and invest the time.
If you're curious about the process, you can find [our PR on the `cncf` repository](https://github.com/cncf/k8s-conformance/pull/1514).


## DevX Team
[James][James] is currently working on a much requested feature for `pdk validate` that will allow exclusions to be specified for files / file paths.
If this is something you've been interested in, jump over to [pdk#1114](https://github.com/puppetlabs/pdk/pull/1114) and share your thoughts / suggestions.


## Porting modules to Cloud CI
Puppet's Partner Integrations (PIE) Team have successfully [ported](https://github.com/puppetlabs/puppetlabs-splunk_hec/pull/124) the tests to run on Cloud CI and configured the repository to use our Automated Release Workflow.
Thanks to [Bill Hurt][Bill] and [Sharon Nam][Sharon] for the collaboration opportunity.


## DSC Builder
The new DSC module builder is inching ever closer to the finish line and the 1.0 release with an automated publishing pipeline is in sight.
This required coordinated efforts all across our teams, involving everything from [Michael's][Michael] relentless persistence to [Josh's][Josh] assistance with some core Puppet updates to support imprecise DSC Resources, all the way to [Gabi's][gabi] journey to [add Windows long path support to upstream Ruby][ruby_paths] itself.
This has been a marathon, with all sorts of new challenges discovered along the way, but thanks to everyone's hard work we're nearly there.


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
  [Bill]:               https://github.com/RandomNoun7 
  [Sharon]:             https://github.com/nam054
  [Josh]:               https://github.com/joshcooper
  [Gabi]:               https://github.com/GabrielNagy
  [ruby_paths]:         https://dev.to/puppet/windows-ruby-and-long-paths-3jag
  
