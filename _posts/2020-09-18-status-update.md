---
layout: post
title: "18th September 2020: IAC Team Status Update"
author: sanfrancrisko
categories:
  - team
  - status
tags:
  - translate
  - concat
  - apt
  - haproxy
  - bolt
  - smoke tests
---

Hello folks!
Hope this Friday finds you all well?
Here's an update from the IAC Team for the week that was:

## Community Contributions
We'd like to thank the following people from the Community for their contributions this week:
- [jcpunk][jcpunk] has been busy cleaning up code in multiple repos to resolve warnings from [`puppet-lint`][puppet-lint]:
    - [puppetlabs-translate#93][translation-pr-93]
    - [puppetlabs-concat#660][concat-pr-660]
- [puppetlabs-stdlib#1126][stdlib-pr-1126]: [b4ldr][b4ldr] added this enhancement to `puppetlabs-stdlib` that adds a new data size type alias

Thank you [jcpunk][jcpunk] and [b4ldr][b4ldr] for your contributions!

## Module Releases
The following modules were released this week:
- [puppetlabs-apt][apt-forge] `v7.6.0`
- [puppetlabs-concat][concat-forge] `TBC`
- [puppetlabs-haproxy][haproxy-forge] `TBC`

## Bolt Smoke Tests
We'd like to thank the [Bolt][bolt] team, and specifically [lucywyman][lucywyman] for getting [a smoke test pipeline][bolt-pr-2164] up and running that verifies Bolt releases with Litmus!

Also, thanks to [jpogran][jpogran] and [nicklewis][nicklewis] for quickly jumping on [bolt#2188][bolt-issue-2188], discovered by [daianamezdrea][daianamezdrea].
Very much appreciated! :)
    
[jcpunk]:               https://github.com/jcpunk
[puppet-lint]:          https://github.com/rodjek/puppet-lint
[translation-pr-93]:    https://github.com/puppetlabs/puppetlabs-translate/pull/93
[concat-pr-660]:        https://github.com/puppetlabs/puppetlabs-concat/pull/660
[stdlib-pr-1126]:       https://github.com/puppetlabs/puppetlabs-stdlib/pull/1126
[b4ldr]:                https://github.com/b4ldr
[apt-forge]:            https://forge.puppet.com/puppetlabs/apt
[concat-forge]:         https://forge.puppet.com/puppetlabs/concat
[haproxy-forge]:        https://forge.puppet.com/puppetlabs/haproxy
[lucywyman]:            https://github.com/lucywyman
[bolt-pr-2164]:         https://github.com/puppetlabs/bolt/pull/2164
[bolt]:                 https://github.com/puppetlabs/bolt
[bolt-issue-2188]:      https://github.com/puppetlabs/bolt/issues/2188
[jpogran]:              https://github.com/jpogran
[nicklewis]:            https://github.com/nicklewis
[daianamezdrea]:        https://github.com/daianamezdrea