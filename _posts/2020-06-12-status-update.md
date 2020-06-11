---
layout: post
title: "12th June 2020: IAC Team Status Update"
author: carabasdaniel
categories:
  - team
  - status
tags:
  - litmus
  - gpg
  - puppet-modulebuilder
  - community
  - modules
  - tools
  - social
  - archived
---

The IAC team has been working on a lot of things over the past week. We want to share with our community some of the most interesting things. Here’s a brief overview of what we’ve been up to:

## Module Releases from IAC Team
The release process for the following modules has been started and these will finished as soon as we manage to resolve our testing infrastructure issues:
- [puppetlabs/postgresql](https://github.com/puppetlabs/puppetlabs-postgresql) (6.6.0)
- [puppetlabs/ibm_installation_manager](https://github.com/puppetlabs/puppetlabs-ibm_installation_manager) (2.2.0)

## Updated Puppet GPG signing key, 2020 edition

The GPG signing key we’ve been using to sign Puppet products on Linux is expiring in August 2021 and this change will affect both Puppet Enterprise users and open source Puppet users. Please read the blog [here](http://feedproxy.google.com/~r/planetpuppet/~3/BAyZ9YYraQA/) for more information on how to update your keys.

## Puppet Module Repository Housekeeping

This week Puppet has started archiving stale unmaintained module repos living within the Puppet namespace.  
The following module repos have been archived:
- **[puppetlabs-kvm](https://github.com/puppetlabs/puppetlabs-kvm)**
- **[puppetlabs-kwalify](https://github.com/puppetlabs/puppetlabs-kwalify)** 
- **[puppetlabs-openstack_admin](https://github.com/puppetlabs/puppetlabs-openstack_admin)**
The IAC team will try and answer any questions/concerns the community may have or redirect your questions/concerns to the appropriate teams.

## Community Contributions
THANK YOU for our great community members that continue to contribute to our modules:
- **[`puppetlabs-mysql#1307`](https://github.com/puppetlabs/puppetlabs-mysql/pull/1307):** [Michael Brown](https://github.com/mcb30) adding the use of ALTER USER for mariadb 10.2.0 or newer 
- **[`puppetlabs-postgresql#1174`](https://github.com/puppetlabs/puppetlabs-postgresql/pull/1174):** [Michael Brown](https://github.com/mcb30) adding default postgresql version for Fedora 32
- **[`puppetlabs-mysql#1305`](https://github.com/puppetlabs/puppetlabs-mysql/pull/1305):** [Evgeny Kisel](https://github.com/evgenkisel) adding a bug-fix for mysql managed directories as specified in [MODULES-10679](https://tickets.puppetlabs.com/browse/MODULES-10679)

## Tools
This week we have organised our first all day PR review for all the [tools]({% link tools.html %}) currently under the team's supervision.
This was a very productive day as we have managed to get a clear view across the team on the current development work on all our tool repositories and close out/merge a lot of PRs.
This will make the triage process a lot easier in the future.
Thanks to everyone in the community who's chipping in with fixes and features!

## Litmus
We have released [Puppet Litmus v0.18.3](https://github.com/puppetlabs/puppet_litmus/tree/v0.18.3) ([CHANGELOG](https://github.com/puppetlabs/puppet_litmus/blob/v0.18.3/CHANGELOG.md)) with a couple of important fixes in error formatting and making sure `install_modules_from_directory` works in all cases.

We have also updated the Litmus Concept documentation [here](https://puppetlabs.github.io/litmus/litmus-concepts.html). It's a great resource for better understanding of Puppet Litmus.  

## Puppet Module Builder
We have also released a new version of [Puppet Module Builder v0.2.1](https://github.com/puppetlabs/puppet-modulebuilder/tree/v0.2.1) with added fix for symlink handling and Ruby 2.7 testing.

## Social hour
A big thank you for the EMEA Customer Support team that joined us last Friday in a nice social hour meeting where we shared two awesome games of trivia and a couple of beers. We hope you'll join us again some time for another great round of games and beer. 

## Wrap-up

That’s it for this weeks update, a big THANK YOU for all your contributions and support.
