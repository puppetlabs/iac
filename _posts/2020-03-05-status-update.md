---
layout: post
title: "5th March 2020: IAC Team Status Update"
author: david22swan
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

Over the last week we have released three different modules:

- [puppetlabs/apt](https://forge.puppet.com/puppetlabs/apt) (v7.4.0)
- [puppetlabs/mysql](https://forge.puppet.com/puppetlabs/mysql) (v10.4.0)
- [puppetlabs/reboot](https://forge.puppet.com/puppetlabs/reboot) (v3.0.0)

## Customer Escalations

Over the past week we have closed out one major piece of customer escalation for the [mysql](https://tickets.puppetlabs.com/browse/IAC-350) module and we have also begun work on another that has been raised regarding the [reboot](https://tickets.puppetlabs.com/browse/MODULES-10581) module.

Work has also been started on improvements to the SqlServer module, with multiple issues raised being worked on concurrently, said issues being detailed in the following tickets: [FM-8879](https://tickets.puppetlabs.com/browse/FM-8879), [MODULES-3934](https://tickets.puppetlabs.com/browse/MODULES-3934) and [MODULES-5071](https://tickets.puppetlabs.com/browse/MODULES-5071). Big thanks go out to Bill Hurt for his acceptance in this matter, his advice, guidance and the work he has put in directly have been invaluable.

## Litmus Progress

Our work on converting our tests to Litmus has been ongoing with one module, MySQL having been fully converted and another, vSphere being in the process of recieving its final reviews.

Finally in regards to the progress we made with Docker we are facing some challenges in regards to Windows support but we have made good progress and expect even more in the future, the changes can be seen [in this PR](https://github.com/puppetlabs/puppetlabs-docker/pull/585).