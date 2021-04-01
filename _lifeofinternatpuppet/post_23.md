---
layout: page
title: Week 23
author: Disha-maker
categories:
  - team
  - basics
tags:
  - week 23
---

Hi everyone, Another busy week is over!

- On the Triage Day Monday, I worked on the release prep process for the two modules; puppetlabs-tagmail and puppetlabs-apt.

- During the week I released some more modules.
    - puppetlabs-apache. This was uploaded manually onto The Forge.
    - puppetlabs-wsus_client and puppetlabs-vcsrepo. After uploading the new version on the forge  (v3.2.1) the mergeback pr was merged during next week's triage day.

- JIRA tickets were created for majority of the modules released in that week

**Module Release Prep**
    [puppetlabs-tagmail](https://github.com/puppetlabs/puppetlabs-tagmail/pull/202) (v3.5.1)
    [puppetlabs-apt](https://github.com/puppetlabs/puppetlabs-apt/pull/968) (v7.7.1)
    [puppetlabs-vcsrepo](https://github.com/puppetlabs/puppetlabs-vcsrepo/pull/493) (v3.2.1)
    [puppetlabs-apache](https://github.com/puppetlabs/puppetlabs-apache/pull/2126) (v5.10.0)
    [puppetlabs-wsus_client](https://github.com/puppetlabs/puppetlabs-wsus_client/pull/151) (v3.2.0)
       The first release prep [PR](https://github.com/puppetlabs/puppetlabs-wsus_client/pull/149) was closed. This was because the tests were failing on AppVeyor due to 'legacy parameter error that adapts Pester 5 to Pester 4 syntax'
  - A new pr was created, check [here](https://github.com/puppetlabs/puppetlabs-wsus_client/pull/150) to fix the error and the release prep was done again. Check the #151 PR for more details!

**Module Releases**
    [puppetlabs-tagmail](https://forge.puppet.com/puppetlabs/tagmail) (v3.5.1)
    [puppetlabs-apt](https://forge.puppet.com/puppetlabs/apt) (v7.7.1)
    [puppetlabs-vcsrepo](https://forge.puppet.com/puppetlabs/vcsrepo) (v3.2.1)
    [puppetlabs-apache](https://forge.puppet.com/modules/puppetlabs/apache) (v5.10.0)
    [puppetlabs-wsus_client](https://forge.puppet.com/modules/puppetlabs/wsus_client) (v3.2.0)

**Mergeback PR after release**
    [puppetlabs-tagmail](https://github.com/puppetlabs/puppetlabs-tagmail/pull/204) (v3.5.1)
    [puppetlabs-apt](https://github.com/puppetlabs/puppetlabs-apt/pull/970) (v7.7.1)
    [puppetlabs-vcsrepo](https://github.com/puppetlabs/puppetlabs-vcsrepo/pull/495) (v3.2.1)
       The old [mergeback PR](https://github.com/puppetlabs/puppetlabs-vcsrepo/pull/494) was closed by Adrian.
    [puppetlabs-apache](https://github.com/puppetlabs/puppetlabs-apache/pull/2127) (v5.10.0)
    [puppetlabs-wsus_client](https://github.com/puppetlabs/puppetlabs-wsus_client/pull/152) (v3.2.0)

A JIRA ticket was raised for the vcsrepo mergeback PR test failure, check the ticket [here](https://tickets.puppetlabs.com/browse/IAC-1474)

A github repository called 'IAC Intern Repo' was also created to practice the github commands in a safe environment. Check the link [here](https://github.com/puppetlabs/IAC_Intern_Repo)

That's all for this week!