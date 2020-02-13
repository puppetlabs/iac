---
layout: post
title: "14th Feb 2020: IAC Team Status Update"
author: criskoduck
categories:
  - team
  - status
tags:
  - module updates
  - tooling
  - personal
  - honeycomb
  - metrics
  - litmus
  - windows
  - powershell
---

The IAC team has been working on a lot of interesting things over the past week. Here's a brief overview of what we've been up to:

## Updates to Puppet Modules
We've released an update to two modules since last week: 

- [puppetlabs/pwshlib](https://forge.puppet.com/puppetlabs/pwshlib) (v0.4.1)
- [puppetlabs/scheduled_task](https://forge.puppet.com/puppetlabs/scheduled_task) (v2.0.1)

This update to [puppetlabs/scheduled_task](https://forge.puppet.com/puppetlabs/scheduled_task) resolves an issue reported in [MODULES-10101](https://tickets.puppetlabs.com/browse/MODULES-10101).
A fix went in to [puppetlabs/pwshlib](https://forge.puppet.com/puppetlabs/pwshlib) to resolve a bug that was causing runtime errors on older versions of Ruby. See [here](https://github.com/puppetlabs/ruby-pwsh/pull/30) for more details. 

We'll have more module releases next week, but a few interesting updates to come:

- **[puppetlabs-java](https://forge.puppet.com/puppetlabs/java):** Thanks to [timdeluxe](https://github.com/timdeluxe) for [the PR](https://github.com/puppetlabs/puppetlabs-java/pull/370) to add support for [AdoptOpen JDK](https://adoptopenjdk.net/) to the module. [fraenki](https://github.com/fraenki) was also a great help in getting this PR over the line. We'll releasing an update to the module soon!
- **[puppetlabs-mysql](https://forge.puppet.com/puppetlabs/mysql):** [This is a nice PR](https://github.com/puppetlabs/puppetlabs-mysql/pull/1192) from [mauricemeyer](https://github.com/mauricemeyer) that now allows a user to override the default configuration for mysql, if you wish. Thanks to [bastelfreak](https://github.com/bastelfreak) for the help during the review stages.
- **[puppetlabs-apt](https://forge.puppet.com/puppetlabs/apt):** [anarcat](https://github.com/anarcat) submitted [this fix](https://github.com/puppetlabs/puppetlabs-apt/pull/904) which also highlighted an issue with our tests. Two for the price of one! Thanks to [bastelfreak](https://github.com/bastelfreak) and [baldurmen](https://github.com/baldurmen) for the reviews, too.

## We're still buzzing about Honeycomb
![Module RSpec trace](/iac/assets/2020-02-14-status-update/honeycomb_rspec_formatter.png)

We're continuing to see the benefits of [Honeycomb](https://www.honeycomb.io/). To make life easier, we now have the [rspec_honeycomb_formatter](https://github.com/puppetlabs/rspec_honeycomb_formatter).
When you add this gem to a project's Gemfile, it will create a [Custom formatter in RSpec](https://relishapp.com/rspec/rspec-core/docs/formatters/custom-formatters) that will capture the metrics we're interested in, then send it to the configured Honeycomb endpoint for processing!

## Supported Modules Litmus Conversion
We're starting to get to the bottom of the list of modules still to be converted to [Litmus](https://github.com/puppetlabs/puppet_litmus). We're wrapping up on [puppetlabs-powershell](https://github.com/puppetlabs/puppetlabs-powershell/), [puppetlabs-sqlserver](https://github.com/puppetlabs/puppetlabs-sqlserver/) and [puppetlabs-vsphere](https://github.com/puppetlabs/puppetlabs-vsphere/).
Converting to Litmus makes testing of the modules for both ourselves at Puppet and contributors from the Community, a much easier experience.
If you're interested in porting a module to Litmus, feel free to reach out to us during [Office Hours](https://puppet.com/community/office-hours/) - we'll be glad to help!