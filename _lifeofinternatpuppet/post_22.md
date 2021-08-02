---
layout: page
title: Week 22
author: Disha-maker
categories:
  - team
  - basics
tags:
  - week 22
---

Hi all,

- I continued to work on the writing my SMART Objectives and Linked In Learning Training Videos.
The training videos for this week were :-
  - [Git: Branches, Merges and Remotes](https://www.linkedin.com/learning/git-branches-merges-and-remotes/unlock-powerful-code-management-and-collaboration-tools-in-git?u=2098212)
  - [Git Intermediate Techniques](https://www.linkedin.com/learning/git-intermediate-techniques/delete-local-and-remote-branches?u=2098212)

- I was also given a deliverable for the end of the month to release at least 3 modules for the team on Triage Day Mondays.

The following modules were released during the week:-

**Module Release Prep**
    [puppetlabs-firewall](https://github.com/puppetlabs/puppetlabs-firewall/pull/969) (v2.8.1)
    [puppetlabs-mysql](https://github.com/puppetlabs/puppetlabs-mysql/pull/1364) (v10.10.0)

**Module Releases**
    [puppetlabs-firewall](https://forge.puppet.com/puppetlabs/firewall) (v2.8.1)
    [puppetlabs-mysql](https://forge.puppet.com/puppetlabs/mysql) (v10.10.0)

**Mergeback PRs after release**
    [puppetlabs-firewall](https://github.com/puppetlabs/puppetlabs-firewall/pull/970) (v2.8.1)
    [puppetlabs-mysql](https://github.com/puppetlabs/puppetlabs-mysql/pull/1365) (v10.10.0)

I used the wrong SHA in the JIRA ticket when doing the puppetlabs-firewall module release. I was informed of my mistake and the correct SHA was added in the ticket by the team.

- I decided to work on the puppetlabs-inifile module release but that didn't took place as the module didn't had any new features or bug fixes after its last release. I picked a different module [puppetlabs-mysql](https://github.com/puppetlabs/puppetlabs-mysql) and started to prepare for its release. I added a feature label to this [PR](https://github.com/puppetlabs/puppetlabs-mysql/pull/1360) before doing the release for the puppetlabs-mysql module.

- I also learnt how to decide when the module is ready for its next release. Thanks for the information Paula!

- When doing the release prep PR, I got a few warnings for PDK: Updating documentation using puppet strings. A separate [ticket](https://tickets.puppetlabs.com/browse/IAC-1430) was raised in the backlog to improve the module documentation.

Have a nice weekend everyone!