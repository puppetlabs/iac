---
layout: post
title: "2020-09-25: IAC Team Status Update"
author: david22swan
categories:
  - team
  - status
tags:
  - concat
  - kubernetes
  - stdlib
  - translate
  - postgresql
  - strings
  - accounts
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- Thanks to [jcpunk][jcpunk] for the tidy up effort to resolve `puppet-lint` and `yamllint` warnings across the following repos:
  - [`puppetlabs-concat#660`][puppetlabs-concat-pr-660]
  - [`puppetlabs-kubernetes#438`][puppetlabs-kubernetes-pr-438]
  - [`puppetlabs-stdlib#1127`][puppetlabs-stdlib-pr-1127]
  - [`puppetlabs-translate#93`][puppetlabs-translate-pr-93]
- [`puppetlabs-postgresql#1187`][puppetlabs-postgresql-pr-1187]: Thanks to [ekohl][ekohl] for the enhancement that allows you to remove config entries by setting them to `undef` - a very useful addition!
- [`puppetlabs-strings#252`][puppetlabs-strings-pr-252]: Thanks to [kozl][kozl] for the various enhancements and fixes in this. Check out [the description](https://github.com/puppetlabs/puppet-strings/pull/252#issue-487952635) for more details.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-accounts`][puppetlabs-accounts] (`6.3.0`)

  [puppetlabs-accounts]: https://github.com/puppetlabs/puppetlabs-accounts
  [puppetlabs-concat-pr-660]: https://github.com/puppetlabs/puppetlabs-concat/pull/660
  [jcpunk]: https://github.com/jcpunk
  [puppetlabs-kubernetes-pr-438]: https://github.com/puppetlabs/puppetlabs-kubernetes/pull/438
  [puppetlabs-postgresql-pr-1187]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1187
  [ekohl]: https://github.com/ekohl
  [puppetlabs-stdlib-pr-1127]: https://github.com/puppetlabs/puppetlabs-stdlib/pull/1127
  [puppetlabs-translate-pr-93]: https://github.com/puppetlabs/puppetlabs-translate/pull/93
  [puppetlabs-strings-pr-252]: https://github.com/puppetlabs/puppet-strings/pull/252
  [kozl]: https://github.com/kozl
  [binford2k]: https://github.com/binford2k