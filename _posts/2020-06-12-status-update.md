---
layout: post
title: "12th June 2020: IAC Team Status Update"
author: carabasdaniel
categories:
  - team
  - status
tags:
  - litmus
  - puppet-modulebuilder
  - community
  - modules
  - tools
---

The IAC team has been working on a lot of things over the past week. We want to share with our community some of the most interesting things. Here’s a brief overview of what we’ve been up to:

## Module Releases from IAC Team
The release process for the following modules has been started and these will finished as soon as we manage to resolve our testing infrastructure issues:
- [puppetlabs/postgresql](https://github.com/puppetlabs/puppetlabs-postgresql) (6.6.0)
- [puppetlabs/ibm_installation_manager](https://github.com/puppetlabs/puppetlabs-ibm_installation_manager) (2.2.0)

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

## Puppet Module Builder
We have also released a new version of [Puppet Module Builder v0.2.1](https://github.com/puppetlabs/puppet-modulebuilder/tree/v0.2.1) with added fix for symlink handling and Ruby 2.7 testing.

## Wrap-up

That’s it for this weeks update, a big THANK YOU for all your contributions and support.
