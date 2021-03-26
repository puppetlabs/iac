---
layout: post
title: "2021-03-26: IAC Team Status Update"
author: sanfrancrisko
categories:
  - team
  - status
tags:
  - reboot
  - community_dashboard
  - cloudci
  - translate
  - devx
  - pdk
  - pdk-docker
---

Hello and welcome to another weekly update from the IAC Team.
As mentioned last week, we were all off on Monday so we didn't have the regularly scheduled Community Day at the start of the week so only one module released and one PR merged to report on this week.

Normal service resumes on Monday 29th!

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`ruby-pwsh#118`][ruby-pwsh-pr-118]: "(Maint) Ensure canonicalize correctly compares sorted hashes", thanks to [Hvid][Hvid]

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-reboot`][puppetlabs-reboot] (`4.0.2`)

  [puppetlabs-reboot]: https://github.com/puppetlabs/puppetlabs-reboot
  [ruby-pwsh-pr-118]: https://github.com/puppetlabs/ruby-pwsh/pull/118
  [Hvid]: https://github.com/Hvid

## Cloud CI Update

This week we mainly focused on the `puppetlabs-websphere_application_server` port and preparing the resources needed for the `puppetlabs-satellite_pe_tools` module.
We'll soon begin the work for porting the `puppetlabs-satellite_pe_tools` module integration testing on a multi-node GCP environment.

We also managed to fix the persistent firewall issue this week that was causing a couple of issues after long sessions of debugging and added a couple of other minor bug fixes.

In the near future we'll start to change our focus towards more training and education on debugging and using the new workflows with the supported Puppet modules.

## Community Management Revamp

We'd like to thank [Daiana][Daiana] for the wonderful work she did to update the Github Actions nightly report on the [community_management](https://puppetlabs.github.io/community_management/) website:

![comm_mgmt_revamp]({% link /assets/2021-03-26-status-update/comm_mgmt_revamp.png %})

I hope you'll agree that this clean new look makes it easy to quickly get an overview of the state of our modules' CI runs.

Here's a few words from [Daiana][Daiana] about this great work:

> As we promised last week, the Github Actions report from our tool ( CM) is finally up.
> Also, we added more surprises and we're ready for the phase 2 of re-vamping the report.
> [Here](https://github.com/puppetlabs/community_management/pull/64) you can find a big PR which contains the new changes.

## Meet the DevX Team

A full blog post outlining our remit will be coming soon, but we're excited to announce the start of the newly reformed Developer Experience Team (DevX)!
This is made up of [James Pogran][James], [David Armstrong][DavidArmstrong] and [Ciaran McCrisken][Ciaran].

The DevX team is focused on improving the developer experience across Puppet Products.
One of the first areas of focus that is going to get significant time investment is the [PDK](https://github.com/puppetlabs/pdk)

It's no secret that the PDK has not had the care and attention that it warrants over the past year and we're looking to rectify that.

To discuss future feature work for the PDK, we are trying out the new Github Discussion board [here](https://github.com/puppetlabs/pdk/discussions).
This replaces the previous RFC workflow of the pdk-planning repo.
If you see an open discussion for a feature you would like implemented, please upvote or comment on the discussion.

One of the first discussions we want to invite you to participate in is the future of the [PDK Docker](https://github.com/puppetlabs/pdk-docker) project.
Come join the discussion here: [**pdk/discussions#1038**](https://github.com/puppetlabs/pdk/discussions/1038)

## Translate Module Deprecation

We have now officially marked the `puppetlabs-translate` module as deprecated.
[David Swan][DavidSwan] has removed it as a dependency from our supported modules.

## JIRA Spring Cleaning

As part of this ongoing effort, the team is spending a bit of downtime to go through and close out old, already addressed and/or now-irrelevant tickets:

![jira_burndown]({% link /assets/2021-03-26-status-update/jira_burndown.png %})

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
