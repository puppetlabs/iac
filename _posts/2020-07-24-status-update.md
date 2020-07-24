---
layout: post
title: "24th July 2020: IAC Team Status Update"
author: michaeltlombardi
categories:
  - team
  - status
tags:
  - shoutouts
  - mysql
  - puppet7
---

It's Friday - time for another status update from the IAC Team!
Here's a short overview of some of the work we and the community have been up to recently:

## Community Contributions
We've had plenty of great community contributions this week:

- [fe80][fe80] [added the capability too specify by package provider and source][mysql-package-options-pr], to the [MySQL module][mysql-module].
- [elmobp][elmobp] [fixed a bug in the MySQL module][mysql-bugfix-pr] which was caused by improper handling of non-printable characters being returned by MySQL.

## Preparing for Puppet 7

Given the upcoming release of Puppet 7, the IAC team have begun working with our colleagues on the Puppet Agent team to ensure that the [supported modules]({% link modules.html %}) and [tools]({% link tools.html %}) we manage are thoroughly tested with Puppet 7.
We hope to begin testing the modules with the nightly builds of Puppet 7 from next week.
Special thanks to [mihaibuzgau][mihaibuzgau] and [gimmyxd][gimmyxd] for their help in this effort!

<!-- Links -->
[mysql-package-options-pr]: https://github.com/puppetlabs/puppetlabs-mysql/pull/1314/
[mysql-module]:             https://forge.puppet.com/puppetlabs/mysql
[mysql-bugfix-pr]:          https://github.com/puppetlabs/puppetlabs-mysql/pull/1315
<!-- Mentioned People -->
[fe80]:        https://github.com/fe80
[elmobp]:      https://github.com/elmobp
[mihaibuzgau]: https://github.com/mihaibuzgau
[gimmyxd]:     https://github.com/gimmyxd
