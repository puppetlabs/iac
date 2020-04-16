---
layout: post
title: "16th April 2020: IAC Team Status Update"
author: david22swan
categories:
  - team
  - status
tags:
  - module updates
  - community
  - litmus
  - testing
  - dsc
  - powershell
  - windows
---

The IAC team has been hard at work over the past week.
Here's a brief overview of what we've been up to:

## The Return of Paula

To start things off on a high note I'd like to announce the return of [Paula Muir](https://github.com/pmcmaw) to the modules team.

Paula had spent the last several months of on maternity leave but has returned to the team she could not stay away from and is now once again ready to take part in the vital work that we accomplish throughout the year. But enough from me, time to hear from the woman of the hour herself:

```
I have finally returned from maternity leave and instantly I can see major changes within the team. This includes the content we now own to the members on the team.
It is clear the team has everything under control and I am really looking forward to getting up to speed again.
Im sure before I know it, it will be just like I was never away.
```

## The Continuing Success of honeycomb

One feature that we can't help but continue to return to is just how much of a help [Honeycomb](honeycomb) is to our continuing work.
Extracting a week's work of data from all that we have collected has allowed our good manager [Norman](norman) to not only spot patterns and common areas that we have since used in order to help stabilise our weekly runs, but to also identify issues that are outside the IAC domain.
This in turn has allowed us to quickly reach out to our colleagues within Puppet both for assistance and to provide them with information that they can use to improve their own features.

If you are as excited by all of this as I am then I urge you to read to blog post made by fellow team member [David Schmitt](david) found [here](../_posts/2020-03-30-debugging-unit-tests-with-honeycomb.md) and discover all that [Honeycomb](honeycomb) can do for you.

## Module Releases

One thing we are always happy to talk about is the release of a module, in this case:

- [puppetlabs/stdlib](https://forge.puppet.com/puppetlabs/stdlib) (v6.3.0)

## Continued Work on Puppet DSC

The work done by the team to [refactor DSC support](iac-41) in Puppet has continued with strides being made every day and the first of the beta trial packets being sent out. To any community members that have not received one of these packets but would like to, we encourage you to reach out to dsc@puppet.com with answers to the following questions:

- What are the top three PowerShell modules with DSC resources you use/depend on the most?
- Are you interested in participating in our beta testing program?

## Community Issues

Speaking of community I would like to take a moment to mention the community issues that have been raised over the last week and that are helping us to continually improve upon our modules and ensure that they run just as they should:

- [MODULES-10628](https://tickets.puppetlabs.com/browse/MODULES-10628) - Docker volumes expects array rather than hash
- [MODULES-10629](https://tickets.puppetlabs.com/browse/MODULES-10629) - Registry_auth results in changes every catalog run

## Community Contributions

When we talk of community it's not just the issues that they have raised, but also the contributions that they have made, so here's a few of the excellent PRs opened by community members that have been merged in over the last week:

- [Add ProxyIOBufferSize option #2014](https://github.com/puppetlabs/puppetlabs-apache/pull/2014)
- [(MODULES-10623) explicitly top-scope calls to JSON methods #1101](https://github.com/puppetlabs/puppetlabs-stdlib/pull/1101)

We would like to thank both [jplindquist](jplindquist) and [tkishel](tkishel) for these contributions and hope to see more from them both in the future.

## Community Management

In order to help us better work with the community our very own [Daiana](daiana) has continued to work on a management tool to help us keep track of the various PRs opened by the community. A new improvement was added just this week, allowing us to fnd when Prs where last given a response, either by ourselves or by the community member that opened it.

## Litmus

The final thing that I wish to talk about today is the work finalising our adoption of Litmus as a test environment throughout our modules:

- [puppetlabs/reboot](https://github.com/puppetlabs/puppetlabs-reboot/pull/235/files) - This port of this module is in it's final stages and should be shipped by the end of the week, IAC team member [Ciaran](ciaran) putting the finishing touches to it as I write this.
- [puppetlabs/satellite_pe_tools](https://github.com/puppetlabs/puppetlabs-satellite_pe_tools) - The work on this port is nearing it's end headed by [myself](me), and although some issues with scp are hindering it's completion it should be finished and shoved out the door soon.
- [puppetlabs/ibm_installation_manager](https://github.com/puppetlabs/puppetlabs-ibm_installation_manager) - The final module of ours to be ported, this is just waiting on beng started and once finished will signal the end of our dependence on outside factors for testing our modules.

## Wrap Up

And that's the last of what I've got to say, I hope you've found my post interesting and look forward to seeing contributions from all of you in the future.

[honeycomb]:														https://honeycomb.io/
[norman]:   														https://github.com/nheaney18
[david]:																https://github.com/DavidS
[daiana]:       												https://github.com/daianamezdrea
[ciaran]:       												https://github.com/sanfrancrisko
[me]:       									    			https://github.com/david22swan
[iac-41]:       												https://tickets.puppetlabs.com/browse/IAC-41
[jplindquist]:       										https://github.com/jplindquist
[tkishel]:       												https://github.com/tkishel