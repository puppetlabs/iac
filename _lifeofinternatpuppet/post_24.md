---
layout: page
title: Week 24
author: Disha-maker
categories:
  - team
  - basics
tags:
  - week 24
---

Hello all,

- On the triage day, I paired up with Ciaran and Paula to help with major release bumps; RHEL 5.x removal, Puppet 5 removal and module release. The module versions were incremented by 1 for example puppetlabs-concat v.7.0.0 to    v8.0.0.
Check an example [here](https://github.com/puppetlabs/puppetlabs-websphere_application_server/pull/218/files)
Check the ticket [here](https://tickets.puppetlabs.com/browse/IAC-1482)

- I raised the following PRs for 'Update major dependencies prior to release'
   - [puppetlabs-wsus_client](https://github.com/puppetlabs/puppetlabs-wsus_client/pull/153)
   - [puppetlabs-websphere_application_server](https://github.com/puppetlabs/puppetlabs-websphere_application_server/pull/218)
   - [puppetlabs-tomcat](https://github.com/puppetlabs/puppetlabs-tomcat/pull/433)

- I also spent some time understanding how to do if statements in Ruby, links given below.
   - [Ruby in Twenty Minutes](https://www.ruby-lang.org/en/documentation/quickstart/)
   - [Ruby Tutorial For Complete Beginners: Learn Ruby Now!](https://www.rubyguides.com/ruby-tutorial/ruby-if-else/)
   - [Learn Ruby the Hard Way](https://learnrubythehardway.org/book/)

- I worked alongside Paula to review and merge PRs called 'pdksync - (MAINT) Remove RHEL 5 family support'
I also re-kicked tests for rhel-7, puppet-7 nightly on the puppetlabs-postgresql.
Due to constant failures, I decided to run the tests for that machine locally to verify if the tests are running properly. I also re-kicked tests on puppetlabs-mysql as there were some failures discovered.
Check the PRs for more information
   - [PR_1](https://github.com/puppetlabs/puppetlabs-postgresql/pull/1246)
   - [PR_2](https://github.com/puppetlabs/puppetlabs-mysql/pull/1369)

Finally, I also learnt how to create folders on branches for the IAC Intern Repo.

Have a nice weekend everyone, see you all next week!