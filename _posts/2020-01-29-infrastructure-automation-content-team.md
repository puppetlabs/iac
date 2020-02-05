---
layout: post
title: "Introduction to the IAC Team"
author: criskoduck
categories:
  - team
  - basics
tags:
  - process
  - tooling
  - personal
---

## Workflow of the Puppet IAC Team

During a recent [Office Hours](https://puppet.com/community/office-hours/) event (more about that later!) a question was asked by one of the Puppet Community's many talented and inquisitive folk.
Usually, in [Office Hours](https://puppet.com/community/office-hours/), we are used to fielding questions from folks who are trying to enhance functionality in a module, determine the best way to test or maybe they want to know how to get started to write a new module from scratch.
This one was a little bit different, ragnarkon asked, "What is the module development lifecycle like in Puppet?", along with other questions about our tech stack, work priorization processes and my favourite, "Who names the conference rooms @ Puppet?  ’cause they’re awesome".
I hope I answered that particular community member's questions, but it prompted a discussion amongst the team about whether the people within the Puppet Community know who we are, what we do, how we can help you, and how to reach us if you need that help.

## Who are we?

Firstly, an introduction - the Infrastructure Automation Content (IAC) team spans across 3 time zones: from East to West we have three members in Timișoara, Romania, six members in Belfast, Northern Ireland (including our Engineering Manager) and finally, one man and his dog holding the fort in St. Louis, Missouri, USA.
We also work closely with Product Management teams both in our Portland, Oregon HQ and Belfast.

## What do we do?

The IAC team is responsible for developing and maintaining tooling that contributors to Puppet can use to enhance existing or add new modules to Puppet.
We are also responsible for reviewing the submissions from the community, assisting in development and testing efforts (if required), and releasing new versions of modules to the Forge.

## Workflow and Processes

### Work Prioritization, Ticketing and Development

We follow the KanBan model of work prioritization and categorisation.
We have chosen [JIRA](https://tickets.puppetlabs.com/projects/IAC/summary) as our ticketing system. Within JIRA, the IAC team has a number of epics which we categorise work under.
A few examples of day-to-day epics we interact with a lot:

- Customer Escalations
- [Triage](https://tickets.puppetlabs.com/browse/IAC-5) Tasks (more about Triage later!)

We also have Epics for larger pieces of work, for example:

- [Cloud Platform Provisioning in Litmus](https://tickets.puppetlabs.com/browse/IAC-42)
- [Automated Gem & Testing Release](https://tickets.puppetlabs.com/browse/IAC-158)

We also follow the AGILE methodology of having a stand-up meeting daily, where all members describe what they have been working on since the last meeting, and what they will work on until the next meeting.
It's also during this meeting that we can attempt to unblock individuals who are stuck - either during the stand-up or by assigning time at some stage after. We're in constant communication throughout the day, either face-to-face or over Slack.
We can also jump into meeting rooms / booths and chat to our colleagues in other time zones and screen share.
So it's never the case that we're stuck for very long - we all like to have each other's backs and help at short notice.

As mentioned above, there is constant interaction with our fellow team members throughout the process.
We're constantly asking for or providing feedback, assisting in testing efforts, or pairing up for more tricky issues.
We tend to use Confluence as a first port of call for our documentation.
If the note or document is to become public facing, it will be ported somewhere visible by all.
Github PRs are where we do most of our code reviews from other team members or Puppet Community contributors.

### Testing and CI Process

For testing effort, we like to have as much automated coverage as possible and have mechanisms in place to display the CI test results for each PR.
Sometimes, as part of the planning documentation we may need to outline a test plan more formally; but this should ultimately be translated in to [RSpec](https://relishapp.com/rspec) unit and acceptance tests.
This means that on every code change and PR, we are quickly be alerted to breaking changes.

### Prioritization of Work

Work is prioritised by a number of factors.
Product Management will have an influence over a lot of the work we undertake and they have many factors to consider.
One key component that drives work prioritization is feedback from the IAC team itself.
We like to be very interactive with the Puppet Community contributors and understand what they require.
We will often bring feedback from the community to our stand-ups and more global meetings with Engineering and Product Management.
Through this feedback we're trying to ensure that the user experience is as close to the requirements of the people using and contributing to the product.

One valuable feedback vector is through the weekly [Office Hours](https://puppet.com/community/office-hours/) sessions.
Once a week, members from the IAC team will down tools and be available to any queries coming in via Slack or the video conferencing session from Puppet Community contributors.
If you need help with module development or testing, or you want to determine the best way to do something with a module on the Forge, then this is the place to get that help and send that feedback.
Quite often, if a limitation or issue in a module has been highlighted here, we will bring this up in our next stand-up meeting, raise a JIRA ticket and ensure that it gets prioritization for resources.
There's no better feedback than the people using actively participating in the module ecosystem and we like to make the most of this valuable resource.

### Types of Work

Our number one remit and focus is to ensure that those who want to contribute to the Forge have as frictionless an experience as possible.
That spans everything from a module's lifespan, through initial design / prototyping, to version 1.0.0, right up to the point where it's a veteran module with 100,000s of downloads and a wide and active contributor base.
Our goal is to develop the tools and processes to ensure that is possible.

One very important aspect of our job is the Content Triage rotation.
Two members of the IAC team will take it in turns to review community contributors to Puppet Forge modules.
We're there to ensure that the change meets the quality standard required but more important, we're there to help contributors understand how to do that.
We're very fortunate to receive lots of high quality contributions or those willing to act upon feedback.
The goal is to ensure that the quality of the Puppet modules remains high, whilst constantly being enhanced and reactive to the needs of the community.

### Tech Stack

Some folks may be curious as to what we use day-to-day to get the job done.
There is quite a large amount of software, platforms and tools we use, some you'll likely have heard of and some internal proprietary tools.
For internal tooling, we're in a constant effort to evolve them and make them available for use by the Puppet Community.
We have started a collection on the [tools](/tools/index.html) page.

#### Development and Debugging

##### IDEs

For the most part, the IDE of choice for us is VSCode.
It has support for Puppet manifests and more via [the puppet extension](https://marketplace.visualstudio.com/items?itemName=jpogran.puppet-vscode).
Some of the team also use RubyMine and Sublime Text can also be found on a lot of laptops.
The [Ruby gem pry](https://rubygems.org/gems/pry/) is a heavily utilised one.
This has proven an invaluable tool for debugging during development or investigation when reproducing issues reported to us.

##### PDK

Some of you in the Puppet Community will be aware of the Puppet Development Kit (PDK) already.
From the IAC team's use cases it is a very useful tool that allows us to keep modules on the Forge up-to-date with the necessary configuration / metadata changes.
It also allows us to rapidly prototype or develop new modules should someone from the Puppet Community require help.

##### PDKSync

PDKSync is an excellent tool we use to perform and test bulk changes to many modules.
It also allows us to push PRs to Github so we can quickly deploy these changes.

#### Testing and CI Tools

##### Litmus

Litmus! Litmus is a fantastic resource and probably the most valuable productivity tools that we use day-to-day.
I encourage you to check out the [Wiki for Litmus](https://github.com/puppetlabs/puppet_litmus) if you're thinking of becoming a module contributor.
Litmus is a tool that allows us to quickly set up, execute and tear down a test environment for our modules.
You can provision your test environment using Docker or Vagrant.
For the IAC team, we have access to vmpooler, a proprietary tool/API that spins up and tears down virtual machines in our vSphere infrastructure.
In as little as a few seconds, I can have an environment ready to run acceptance tests on all compatible OSs for a given module, or I can have an environment to replicate a specific customer environment (e.g. on Windows Server 2012 R2, with the Scheduled Task module, I was seeing an issue with...).

##### RSpec and Puppet RSpec

[RSpec](https://relishapp.com/rspec) is the test framework we use to write and execute our unit and acceptance tests.
However, we also have the [RSpec-Puppet gem](https://rspec-puppet.com/) which provides a lot of helper methods to make life easier when testing modules.

##### CI Tools

We use a number of CI automation servers: Jenkins, Travis, AppVeyor, and most recently Github Actions.
There are different requirements for the variety of modules we have either authored, support, or both, and we are constantly evaluating the best tools / platform for our use cases and those of the Puppet Community.
CI executed test runs from PRs are available from the PR itself - this allows us to quickly determine if there is an issue and drill down in to more specific test log output if we need to, regardless of the platform.
