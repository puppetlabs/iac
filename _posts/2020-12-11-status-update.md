---
layout: post
title: "2020-12-11: IAC Team Status Update"
author: DavidS
categories:
  - team
  - status
tags:
  - community
  - releases
  - dsc
  - windows
  - cloud-ci
  - progress
  - pdk
  - infrastructure
  - honeycomb
---

This week has been wild. Lots of community contributions, lots of releases, DSC updates, removing inappropriate language, Cloud CI progress, PDK 2.0, and more! Check out below for the details.

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`provision#143`][provision-pr-143]: "(feat) Allow for passing docker runtime options", thanks to [jarretlavallee][jarretlavallee]
- [`puppetlabs-apache#2104`][puppetlabs-apache-pr-2104]: "(fix) Convert unnecessary multi line warnings to single lines", thanks to [rj667][rj667]
- [`puppetlabs-apache#2103`][puppetlabs-apache-pr-2103]: "(MODULES-10887) Set `use_servername_for_filenames` for defaults", thanks to [towo][towo]
- [`puppetlabs-iis#301`][puppetlabs-iis-pr-301]: "MODULES-10884 Allow a UNC path as the physical path of a web site", thanks to [palintir][palintir]
- [`puppetlabs-postgresql#1201`][puppetlabs-postgresql-pr-1201]: "Change - Use systemd drop-in directory for unit overrides", thanks to [blackknight36][blackknight36] and the following people who helped get it over the line ([maage][maage])
- [`puppetlabs-scheduled_task#171`][puppetlabs-scheduled_task-pr-171]: "(DOCS) update docs to match the code.", thanks to [binford2k][binford2k]
- [`pdk-vanagon#270`][pdk-vanagon-pr-270]: "Update Gemfile", thanks to [sbeaulie][sbeaulie] and the following people who helped get it over the line ([scotje][scotje])
- [`pdk-vanagon#269`][pdk-vanagon-pr-269]: "(MAINT) Re-enable bundle pre-install for Puppet 7.x", thanks to [scotje][scotje]
- [`puppet-modulebuilder#29`][puppet-modulebuilder-pr-29]: "Ignore all hidden files in the root dir", thanks to [ekohl][ekohl]
- [`puppet-modulebuilder#27`][puppet-modulebuilder-pr-27]: "Preserve directory mtimes", thanks to [ekohl][ekohl]

On Community Monday we processed 17 PRs (5 on tooling 12 on modules), releasing 6 modules, despite early vacations starting to eat into our availability.
Next week we'll see if we can go beyond PRs into the issues and tickets and start processing some of that backlog.
Please swing by our [office hours on Monday](https://puppet.com/community/office-hours/) on Slack if you want to directly contact us about anything module related.

## New Module / Gem Releases - Puppet 7 support

Our supported modules are now officially compatible with Puppet 7.
We're committed to rolling out the module releases as fast as we can, incorporating as many valuable changes as possible from the Community in to the releases too.
Some modules pushed to the Forge so far, are:

- [`puppetlabs-apache`][puppetlabs-apache] (`5.8.0`)
- [`puppetlabs-apt`][puppetlabs-apt] (`7.7.0`)
- [`puppetlabs-chocolatey`][puppetlabs-chocolatey] (`5.2.0`)
- [`puppetlabs-inifile`][puppetlabs-inifile] (`4.4.0`)
- [`puppetlabs-package`][puppetlabs-package] (`1.4.0`)
- [`puppetlabs-powershell`][puppetlabs-powershell] (`4.1.0`)
- [`puppetlabs-registry`][puppetlabs-registry] (`3.2.0`)

## Tales from the Intern

Disha's week 15 was very busy too. Find out more information [on her blog](https://puppetlabs.github.io/iac/docs/life_of_intern.html)

## DSC

This was a busy week for DSC!
On Monday, we rebuilt _everything_ on the forge (incrementing the last digit of all released versions by 1) to take advantage of some new improvements to the type generation (more on that below!)
- we have also started the process of backporting all prior-released versions of the PowerShell modules with DSC resources already found on the forge.
Finally, we pushed out a quick bugfix to the base provider in `puppetlabs-pwshlib`, so be sure to update your pins to `0.6.2`!

### Changes to Puppetized DSC Resource Types

If you'd like to walk these changes more deeply, you can checkout our [latest changelog entry][puppet-dsc-changelog].
In short:
- Cleaned up some generated documentation
- Added handling for non-retrievable DSC Resource properties as parameters (no more flapping on specifying credentials or `Force`, etc)
- Added handling for read-only properties so they show up in run reports
- Collapsed the `dsc_ensure` and `ensure` keywords so you only need to specify `dsc_ensure` and then _only if_ the DSC Resource is actually ensurable (fixing flapping and ensuring resources as absent!)
- Fixed bug in type mapping for nested CIM Instances

## Inappropriate Terminology

With everything else going on, we do not want to forget our effort to remove exclusive and inappropriate terminology from our code base. Here's a snapshot of our current progress:

- 31 modules updated
- 4 in progress
- 15 remaining

That's 62% completed.

## Content Cloud CI Project

The project really has been turning a corner.
This week we onboarded a number of modules with no issues at all, including the first module of another team.

As part of our [Honeycomb](https://www.honeycomb.io/) investment, I've published an [enhancement to their buildevents tooling](https://github.com/honeycombio/buildevents/pull/74) that will allow us to collect the entire stack of a nightly acceptance test run in one place.
This goes from from the Github Actions job through the rake task, through the process rake starts, through the webservice call, through our provisioning backend, to the call to terraform applying.
It also includes our rspec tests running in that job, through litmus and bolt into the newly provisioned machine.

Here's a screenshot of how it looks:
![screenshot of a honeycomb waterfall trace diagram showing the flow of calls from github into our backend service and beyond]({% link assets/2020-12-11-status-update/cloud-ci-full-capture.png %})

Sidenote: Thanks to [Heston](https://github.com/hsnodgrass) for more dynamic build-matrix calculations: the development version of litmus now can also calculate which puppet collections are [necessary for testing](https://github.com/puppetlabs/puppet_litmus/pull/357) from metadata.

### Porting Progress

As of earlier this morning we have 30 of 47 modules ported over to the new CI.
Through the [community scripts](https://github.com/puppetlabs/community_management) we have a public report on the [nightly CI runs](https://puppetlabs.github.io/community_management/GithubActionsReport.html).
While yesterday night was especially rough with some timeouts and other issues across multiple modules, on a cell-by-cell basis 435 of 447 cells succeeded (97.3%) with an all week average of 2265/2361 (95.9%).
For everyone except the few people who have access to the [honeycomb stats](https://ui.honeycomb.io/puppet-modules/datasets/litmus-tests/result/tVLDJWy1Avr), here's a screenshot of the top-level success/failure chart:

![Screenshot of a stacked area graph showing job successes and failures over the last 24 hours. There is a block of tests running from midnight through half three with an arbitrary value highlighted showing 21 cells succeeding and 2 failing for this particular 5 minute span.]({% link assets/2020-12-11-status-update/pass-fail-honeycomb.png %})

Once the aforementioned improvements to the tooling get merged and released, we can drill into the failing cells from this view and get all the details on what went wrong.

Currently open issues:
- several timeout issues in communication indicate need for some level of retrying to improve robustness. We'll have to investigate where that is most appropriate.
- apt: false negative as we don't need cloud-ci for apt and github is not amused about the empty matrix
- concat: bolt windows exit code issue
- java_ks: transient failure with keytool availability
- kubernetes: will need more work to get a full cluster working in cloud-ci
- reboot, tagmail: provisioning failed on one machine each
- our result tracking is not dealing well yet with re-runs ([kvrhdn/gha-buildevents#16](https://github.com/kvrhdn/gha-buildevents/issues/16))

In general we are definitely benefitting (in the loosest sense) from the GCP virtual machines being close to real deployments in their setup and runtime behaviour.
Through this we are now detecting edge cases and robustness issues with our puppet code that we can fix once and for all in the modules or the core puppet code leading to a better experience for all.

## Preparing for PDK 2.0

While it's gonna be a small-ish release, PDK 2.0 is in the works, dropping the Ruby 2.1 runtime and with it Puppet 4.
We're gonna take that opportunity and do some early spring cleaning on some components we've been dragging along.
The first thing to land for that is a fresh 1.0 release of the [puppet-module-gems](https://github.com/puppetlabs/puppet-module-gems) with Ruby 2.1 and Ruby 2.3 dropped, and a [current rubocop](https://github.com/puppetlabs/puppet-module-gems/pull/156).
This also requires an update to the [pdk-templates](https://github.com/puppetlabs/pdk-templates) to [provide the new defaults](https://github.com/puppetlabs/pdk-templates/pull/371).
While we try to sequence this work in a way that minimizes impact, please be aware that this might impact you over the next couple of days if you're tracking the `main` branch of pdk-templates.

## "Other" changes

* firewall: Add support for the --condition parameter - https://github.com/puppetlabs/puppetlabs-firewall/pull/941
* apache: Fix bool2httpd function call for older ruby versions - https://github.com/puppetlabs/puppetlabs-apache/pull/2102


  [puppetlabs-apt]: https://github.com/puppetlabs/puppetlabs-apt
  [puppetlabs-powershell]: https://github.com/puppetlabs/puppetlabs-powershell
  [puppetlabs-inifile]: https://github.com/puppetlabs/puppetlabs-inifile
  [puppetlabs-apache]: https://github.com/puppetlabs/puppetlabs-apache
  [puppetlabs-registry]: https://github.com/puppetlabs/puppetlabs-registry
  [puppetlabs-chocolatey]: https://github.com/puppetlabs/puppetlabs-chocolatey
  [puppetlabs-package]: https://github.com/puppetlabs/puppetlabs-package
  [provision-pr-143]: https://github.com/puppetlabs/provision/pull/143
  [jarretlavallee]: https://github.com/jarretlavallee
  [puppetlabs-apache-pr-2104]: https://github.com/puppetlabs/puppetlabs-apache/pull/2104
  [rj667]: https://github.com/rj667
  [puppetlabs-apache-pr-2103]: https://github.com/puppetlabs/puppetlabs-apache/pull/2103
  [towo]: https://github.com/towo
  [puppetlabs-iis-pr-301]: https://github.com/puppetlabs/puppetlabs-iis/pull/301
  [palintir]: https://github.com/palintir
  [puppetlabs-postgresql-pr-1201]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1201
  [blackknight36]: https://github.com/blackknight36
  [maage]: https://github.com/maage
  [puppetlabs-scheduled_task-pr-171]: https://github.com/puppetlabs/puppetlabs-scheduled_task/pull/171
  [binford2k]: https://github.com/binford2k
  [pdk-vanagon-pr-270]: https://github.com/puppetlabs/pdk-vanagon/pull/270
  [sbeaulie]: https://github.com/sbeaulie
  [scotje]: https://github.com/scotje
  [pdk-vanagon-pr-269]: https://github.com/puppetlabs/pdk-vanagon/pull/269
  [puppet-modulebuilder-pr-29]: https://github.com/puppetlabs/puppet-modulebuilder/pull/29
  [ekohl]: https://github.com/ekohl
  [puppet-modulebuilder-pr-27]: https://github.com/puppetlabs/puppet-modulebuilder/pull/27
  [puppet-dsc-changelog]: https://github.com/puppetlabs/Puppet.Dsc/blob/main/CHANGELOG.md#020---2020-12-04

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
