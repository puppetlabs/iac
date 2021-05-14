---
layout: post
title: "2021-05-14: IAC & DevX Team Status Update"
author: daianamezdrea
categories:
  - team
  - status
tags:
- opv
- EveryoneCanContribute
- kubernetes 
- motd
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-kubernetes#516`][puppetlabs-kubernetes-pr-516]: "Add config.toml for containerd installed with 'archive'", thanks to [danifr][danifr]
- [`puppetlabs-kubernetes#510`][puppetlabs-kubernetes-pr-510]: "Improvements to containerd configs when using a package", thanks to [treydock][treydock]
- [`puppetlabs-postgresql#1272`][puppetlabs-postgresql-pr-1272]: "(MODULES-11069) add default version for fedora 34", thanks to [lweller][lweller]
- [`puppetlabs-tomcat#446`][puppetlabs-tomcat-pr-446]: "Add service_name parameter to tomcat::instance", thanks to [treydock][treydock]
- [`pdk-templates#432`][pdk-templates-pr-432]: "Fix Bug in .rubocop.yml.erb", thanks to [cocker-cc][cocker-cc]
- [`pdk-templates#428`][pdk-templates-pr-428]: "Add EditorConfig", thanks to [jeffbyrnes][jeffbyrnes]
- [`puppet-module-gems#163`][puppet-module-gems-pr-163]: "Pin docile on ruby 2.4", thanks to [alexjfisher][alexjfisher]

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-apache`][puppetlabs-apache] (`6.0.1`)
- [`puppetlabs-motd`][puppetlabs-motd] (`6.0.0`)
- [`puppetlabs-kubernetes`][puppetlabs-kubernetes] (`6.1.0`)
- [`puppetlabs-iis`][puppetlabs-iis] (`8.0.2`)

## Developer Experience

The team has planned out the work for the next three weeks to complete a limited availability release of a new approach to templating with PDK. At the end of this we'll have an alpha release for people to try out and provide early feedback.
We worked closely with the Puppet core team on some speed improvements over the last several months. Recent work has been merged into our Ruby distribution and into Puppet core to speed up all of our applications.
Puppet VS Code extension work is coming along nicely, with all open PRs merged. We're planning on releasing 1.3.0 May 31st

## Content Support Team

A massive shout out to [Ben Ford](https://github.com/binford2k) for holding a group session this week and giving the team an overview of the [dropsonde](https://github.com/puppetlabs/dropsonde) tool. We were given plenty of opportunities to ask questions and further preparation for the handover of it to the IAC Team. This is now on [Adrian][Adrian]'s radar and initial scoping of work continues. For more information on exactly how this can be used check out [Bens blog post](https://dev.to/binford2k/telemetry-that-doesn-t-suck-na2).
The team is also working on finishing up a few complex tickets therefore this week has been a great opportunity to spend time pairing with other team members to get new ideas and unblock progress.

## EveryoneCanContribute Café
Many thanks to [David Schmitt][DavidSchmitt] for his talk on [OPV](https://github.com/puppetlabs/opv) at the [#EveryoneCanContribute café](https://twitter.com/dnsmichi/status/1392511069030060033). Also we want to thank [Michael Friedrich](https://twitter.com/dnsmichi) and gitlab for hosting, if you curious about it, [here](https://twitter.com/dnsmichi/status/1392511069030060033) you can find an intersting conversation about OPV and its purpose. 

## See you next week
Thank you guys for all the hard work, enjoy the weekend and the free time!

  [puppetlabs-apache]: https://github.com/puppetlabs/puppetlabs-apache
  [puppetlabs-motd]: https://github.com/puppetlabs/puppetlabs-motd
  [puppetlabs-kubernetes]: https://github.com/puppetlabs/puppetlabs-kubernetes
  [puppetlabs-iis]: https://github.com/puppetlabs/puppetlabs-iis
  [puppetlabs-kubernetes-pr-516]: https://github.com/puppetlabs/puppetlabs-kubernetes/pull/516
  [danifr]: https://github.com/danifr
  [puppetlabs-kubernetes-pr-510]: https://github.com/puppetlabs/puppetlabs-kubernetes/pull/510
  [treydock]: https://github.com/treydock
  [puppetlabs-postgresql-pr-1272]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1272
  [lweller]: https://github.com/lweller
  [puppetlabs-tomcat-pr-446]: https://github.com/puppetlabs/puppetlabs-tomcat/pull/446
  [pdk-templates-pr-432]: https://github.com/puppetlabs/pdk-templates/pull/432
  [cocker-cc]: https://github.com/cocker-cc
  [pdk-templates-pr-428]: https://github.com/puppetlabs/pdk-templates/pull/428
  [jeffbyrnes]: https://github.com/jeffbyrnes
  [puppet-module-gems-pr-163]: https://github.com/puppetlabs/puppet-module-gems/pull/163
  [alexjfisher]: https://github.com/alexjfisher


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
  [Tools]:              https://puppetlabs.github.io/iac/tools/
