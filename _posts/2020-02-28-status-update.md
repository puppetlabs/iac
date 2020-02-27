---
layout: post
title: "28th Feb 2020: IAC Team Status Update"
author: michaeltlombardi
categories:
  - team
  - status
tags:
  - module updates
  - community
  - litmus
  - facter
  - testing
  - pdk
---

The IAC team has been working on a lot of interesting things over the past week.
Here's a brief overview of what we've been up to:

## Updates to Puppet Modules

No modules were released since last week.

## Community Contributions

Thanks to [@jmangt](https://github.com/jmangt) for their improvements to the provision module,
[adding support for sssh'ing to vagrant boxes where root is not allowed to ssh](https://github.com/puppetlabs/provision/pull/103) and [ensuring the vagrant provision task works against paths with spaces in them](https://github.com/puppetlabs/provision/pull/101).

## Concurrent Ruby Issues & Patch

The [ruby segfault problems in Travis discovered last week](https://tickets.puppetlabs.com/browse/IAC-556) now have a [bandaid](https://github.com/puppetlabs/puppet-module-gems/pull/124/files), released in [puppet-module-gems `0.4.4`](https://github.com/puppetlabs/puppet-module-gems/blob/master/CHANGELOG.md#044) - this patch ensures that concurrent-ruby `1.1.6` is not installed. This has restored CI functionality for us.

## Weekly Test Runs

Numerous PRs went through this week to ensure 44 modules (all those supported modules which have been converted to Litmus so far) run weekly tests via GitHub Actions.
These tests run against the master branch executing the full test suite - all of the spec tests and then all of the acceptance tests against the full matrix of operating systems for that module (defined in the `release_checks` section of the `provision.yaml` for that module).

These results are recorded to the [Community Dashboard](https://puppetlabs.github.io/community_management/) in the `Github Actions Report` tab, which shows the test results for the last five runs for each workflow and module.
Right now, these results are recorded fairly simply, listing the run number, the branch the tests ran against, and whether they passed or failed.
In the future, we will be improving the usefulness of this dashboard in numerous ways, but for now we just wanted a way to get some quick visualization for triage.

## Updated Tools Page(s)

This week we also updated the page on this site for the tools we maintain - each project header now also leads to a page for that tool with additional information.
We've collected some at-a-glance badges for each of the projects too.
We hope this will make keeping up with the available tooling a little easier!

## puppet-modulebuilder Gem 0.1.0 Release

As we mentioned last week, we've [been working](https://tickets.puppetlabs.com/browse/IAC-532) with the PDE and Night Watch teams at Puppet on the [puppet-modulebuilder](https://github.com/puppetlabs/puppet-modulebuilder) gem, which has now [been released](https://rubygems.org/gems/puppet-modulebuilder/versions/0.1.0)!
This will carry the actual functionality for `pdk build` and allow third-party tools to re-use the same functionality without having to pull in the whole PDK.
A new Litmus release is ongoing to take advantage of this new development!

Thanks a lot to [Glenn Sarti](https://github.com/glennsarti) and [Florin Dragos](https://github.com/florindragos) for helping out with everything!

## Facter 4 Incoming

We started doing some prep work this week as [Facter](https://github.com/puppetlabs/facter-ng)'s next major update has [become available as prerelease](https://rubygems.org/gems/facter/versions/4.0.8.pre).
Facter 4 is a return to Ruby from C++ which allows deeper integration with the rest of our modules and test-tooling, and easier hacking on the core facts.
First we've got some checking and verifying to do as this major version rolls out to ensure a smooth experience for everyone.
If you want to try it out in your module's unit tests, specify `FACTER_GEM_VERSION='4.0.8.pre'` in your environment before any bundle or PDK commands.
Let us know in the [#puppet-dev](https://puppetcommunity.slack.com/archives/C0W1X7ZAL) channel on the [community slack](http://slack.puppet.com/) how it goes.

We should have more on this in the near future, particularly any advice and guidance around what it will mean for you as module developers and consumers - the expected release date is March 11th, 2020!

## PDK 1.17.0 Release

A [new release of the PDK](https://github.com/puppetlabs/pdk/blob/master/CHANGELOG.md#v1170-2020-02-27) is here with initial support for control repos, system-level settings, and [numerous template updates](https://github.com/puppetlabs/pdk-templates/compare/1.16.0...1.17.0)!

## New Puppet Blog on De-Forking a Module

[Gene Liverman](https://github.com/genebean), a senior SRE at Puppet, [wrote a blog post on the main Puppet blog this week for de-forking a Puppet module](https://puppet.com/blog/de-forking-a-puppet-module/) - essentially, what to do when you want to incorporate upstream changes back into a project you've forked.
Great work on a topic that comes up fairly often in the open source world!

## PuppetCamp Berlin 2020

In two weeks the sold out [PuppetCamp Berlin](https://www.eventbrite.com/e/puppet-camp-berlin-tickets-84908295999) will happen at the AWS OpsWorks offices, with a great showing of folks from the community and Puppet.
If you're one of the lucky ones with a ticket, come and say hi to Melissa Casburn, our UX architect, [@binford2k](https://github.com/binford2k), community shepherd, and [@DavidS](https://github.com/DavidS), tech lead of IAC.
