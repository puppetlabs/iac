---
layout: post
title: "5th June 2020: IAC Team Status Update"
author: david22swan
categories:
  - team
  - status
tags:
  - demos
  - litmus
  - community
  - modules
---

Greetings from the IAC Team - before we start we would just like to say that we echo [Puppet's recent statement](https://twitter.com/puppetize/status/1267558026858266625), that we stand with the black community now and always.

> Puppet stands with the Black community. We stand against racism, violence and hate. Equality is not a privilege. Justice is not a privilege. These are rights for everyone. Silence prevents progress so join us in speaking up for equality and justice for Black lives now and always.

----
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>

## Temporary Interuption to Test Infrastructure
Due to the AddTrust intermediate certificate expiring, all Github Actions tests that we are running to verify modules on commercially licensed and/or non-dockerizable OS, we were not running any releases this week. A support ticket with VMware has been raised as apparently changing certificate chains is not as straight-forward as one might expect. Big Thanks to the DIO team who is working tirelessly on this issue.

## Module Releases from IAC Team
The release process for the following modules has been started and although we have had some issues, as was elaborated on above, we hope to get them out soon.
- [puppetlabs/postgresql](https://github.com/puppetlabs/puppetlabs-postgresql) (6.6.0)
- [puppetlabs/ibm_installation_manager](https://github.com/puppetlabs/puppetlabs-ibm_installation_manager) (2.2.0)

## Community Contributions
The wonderful community members that continue to contribute to our modules have provided us with the following enhancements:
- **[`puppetlabs-java_ks#319`](https://github.com/puppetlabs/puppetlabs-java_ks/pull/319):** [tomkitchen](https://github.com/tomkitchen) a first time contributor has worked hard to add the ability to import a DER formatted certificate file and its corresponding key into a keystore.
- **[`puppetlabs-docker#620`](https://github.com/puppetlabs/puppetlabs-docker/pull/620):** [runejuhl](https://github.com/runejuhl) a returning contributor has updated the code so as to allow all 3.x docker-compose minor versions, expanding the range with which we are compatible.

Many thanks to [tomkitchen](https://github.com/tomkitchen) and [runejuhl](https://github.com/junejuhl) for the work that they have put in and we hope to see more in the future.

## Ubuntu 20.04 Certification
Over the last week or two [I](https://github.com/david22swan) have personally worked on adding support to all of our relevant modules with much of it having been completed. As of right now there are only a small handful of modules that require some further work in order for us to officially declare that they support the new OS. Follow along at [IAC-746](https://tickets.puppetlabs.com/browse/IAC-746).

## New Litmus Github IO Page
A new docs microsite containing all that we know about the excellent Litmus tool has been released just this week. This [site](https://puppetlabs.github.io/litmus), created with care by the combined brilliance of our very own [David Schmitt](https://github.com/DavidS) and the docs teams star [Claire Cadman](https://github.com/clairecadman) will take you through everything you need to know about Litmus and help you get of the ground running with a mix of technical documentation and step-by-step walkthroughs.

The site is (like this blog) powered by Jekyll, and its code available for review and contribution at [puppetlabs/litmus](https://github.com/puppetlabs/litmus).

## Wrap-up
Well, that's all folks!
If you're eager for more then be sure to tune in next week for more from the exciting adventures of the IAC team!
