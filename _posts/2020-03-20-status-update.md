---
layout: post
title: "20th March 2020: IAC Team Status Update"
author: sheenaajay
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

## COVID-19
Puppet supports all employees to work remotely to support COVID-19. This precautionary measure has been taken in order to keep everyone healthy and limit the spread of the virus.

The company supports employees by giving them all the essentials to work remotely and it also appreciates the fact that remote working requires everyone to adjust their working styles. It may not be smooth for everyone, but the company is doing its best to support all the employees during this challenging time. 

So far, everyone is well equipped to work remotely to their best. 

[Remote Working](/iac/assets/2020-03-20-status-update/remote_working.jpg)

## Updates to Puppet Modules

Over the last week we have released:

- [puppetlabs/postgresql](https://forge.puppet.com/puppetlabs/postgresql) (v6.4.0)
- [puppetlabs/rook](https://forge.puppet.com/puppetlabs/postgresql) (v0.4.0)

## Facter 4 Testing

Tested our modules with Facter 4 using pdksync. Execept apache module all modules passed Facter 4 testing. (apache failed because of a custom fact in https://github.com/gentoo/puppet-portage.git). Thanks alot to [Florin Dragos](@florindragos), [Bogdan Irimie](@IrimieBogdan), [Oana Tanasoiu](@oanatmaria), [Sebastian Miclea](@sebastian-miclea), [Gheorghe Popescu](@gimmyxd), [Andrei Filipovici](@Filipovici-Andrei) for all the help on module testing and the fixes.

## Community

We have fixed the spec tests failures on Travis for [puppetlabs-ntp](https://github.com/puppetlabs/puppetlabs-ntp) module. [IAC-615]](https://tickets.puppetlabs.com/browse/IAC-615)

As always we have been working with the brilliant Puppet Community to get their changes in to the modules. A few highlights this week:

- [puppetlabs-postgresql#1150](https://github.com/puppetlabs/puppetlabs-postgresql/pull/1150): A pleasure working with [olifre](https://github.com/olifre) to get this fix he authored over the line. Kudos on the first RSpec test!
- [puppetlabs-docker#586](https://github.com/puppetlabs/puppetlabs-docker/pull/586): Many thanks to [fe80](https://github.com/fe80) for this fix!
- [puppetlabs-inifile#387](https://github.com/puppetlabs/puppetlabs-inifile/pull/387): [alexjfisher](https://github.com/alexjfisher) continues his never ending streak of great contributions!

We’d like to thank the Agent team for their responsiveness in addressing issues that were causing CI test run failures. With so many products spanning so many repositories, even with the best foresight from all parties, there can be unforseen knock on effects from a code change. When we discovered the root cause of the issues preventing the Puppet 5 agent installing on some older Linux systems, the Agent team were quick off the mark to address our issues. Thanks [ciprianbadescu](https://github.com/ciprianbadescu), [lucywyman](https://github.com/lucywyman), beechtom](https://github.com/beechtom), [underscorgan](https://github.com/underscorgan), [e-gris](https://github.com/e-gris), [GabrielNagy](https://github.com/GabrielNagy) and [sarameisburger](https://github.com/sarameisburger)!
There's been plenty keeping us busy in our CI infrastructure this week: [puppetlabs-ntp#566](https://github.com/puppetlabs/puppetlabs-ntp/pull/566). This has been an interesting issue. Thanks to [DavidS](https://github.com/DavidS) and [carabasdaniel](https://github.com/carabasdaniel) for their help with [IAC-615](https://tickets.puppetlabs.com/browse/IAC-615). Curiosity will likely get the better of us and we’ll want to know why these failures occurred on xenial. For now, we’ve bumped the build runner to bionic. Check out [the ticket](https://tickets.puppetlabs.com/browse/IAC-615) if you’re interested or have any ideas.
## Customer Escalations

Over the past week we have closed out an issue on the [puppetlabs-stdlib](https://github.com/puppetlabs/puppetlabs-stdlib) module. As a result of this ticket [IAC-547](https://tickets.puppetlabs.com/browse/IAC-547) we have decided to remove strftime from stdlib as it has already been deprecated and superseded by a function within the Puppet agent.

## Community Reports Tool 

Community reports tool is enhanced with an additional feature to report the PRs from tools maintaned by the IAC team.
[Tools PR](https://puppetlabs.github.io/community_management/)

## Litmus Progress

On [puppetlabs-docker](https://github.com/puppetlabs/puppetlabs-docker) we have finished the conversion to allow users to run acceptance tests using Litmus in [puppetlabs-docker#585](https://github.com/puppetlabs/puppetlabs-docker/pull/585). 

## Process Improvement

We are continously improving the Triage process - one change made recently has proven to be very beneficial. At the end of our rotation, we will hand off to our colleagues who are next up on Triage. Historically, this was done using a JIRA ticket, but now we have a living document on [Confluence](https://www.atlassian.com/software/confluence). We’re also keeping more tightly in sync over video calls - historically, if you were parterned with someone in a different timezone, this was normal - now it’s the case for all of us, whether you’re 5 or 5000 miles apart.
