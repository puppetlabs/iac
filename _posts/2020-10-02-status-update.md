---
layout: post
title: "2020-10-02: IAC Team Status Update"
author: carabasdaniel
categories:
  - team
  - status
tags:
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-apache#2070`][puppetlabs-apache-pr-2070]: Thanks [DLeich][DLeich] for fixing up some non-ASCII characters in the codebase that was causing issues in Onceover.
- [`puppetlabs-apache#2069`][puppetlabs-apache-pr-2069]: Thanks [altmas5][altmas5] for the typo fixes!
- [`puppetlabs-haproxy#442`][puppetlabs-haproxy-pr-442]: [pkaroluk][pkaroluk] put up a fix ensuring that the `haproxy.cfg` is correctly structured when using the option `httpchk` in conjunction with the `http-check` directive. Many thanks!
- [`puppetlabs-kubernetes#443`][puppetlabs-kubernetes-pr-443]: We can now specifically set the advertise address for `etcd` now thanks to [faxm0dem][faxm0dem] 
- [`puppetlabs-postgresql#1195`][puppetlabs-postgresql-pr-1195]: Thank you [osijan][osijan] for adding `hostgssenc` as an additional option in the `$type` parameter within `postgresql::server::pg_hba_rule`
- [`puppetlabs-stdlib#1130`][puppetlabs-stdlib-pr-1130]: A very useful additional function for parsing HOCON files from [reidmv][reidmv] - thanks for the new function!
- [`puppetlabs-stdlib#1129`][puppetlabs-stdlib-pr-1129]: Thank you [b4ldr][b4ldr] for the new types added to `Stdlib::Ensure::File`
- [`puppetlabs-stdlib#1128`][puppetlabs-stdlib-pr-1128]: ...and again from [b4ldr][b4ldr] - this is a great addition: we now have types aligned with the IANA port category definitions, for easier comprehension.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-stdlib`][puppetlabs-stdlib] (`6.5.0`)
- [`puppetlabs-docker`][puppetlabs-docker] (`3.12.0`)
- [`puppetlabs-postgresql`][puppetlabs-postgresql] (`6.8.0`)
- [`puppetlabs-mysql`][puppetlabs-mysql] (`10.7.1`)
- [`puppetlabs-package`][puppetlabs-package] (`1.3.0`)

  [puppetlabs-stdlib]: https://github.com/puppetlabs/puppetlabs-stdlib
  [puppetlabs-docker]: https://github.com/puppetlabs/puppetlabs-docker
  [puppetlabs-postgresql]: https://github.com/puppetlabs/puppetlabs-postgresql
  [puppetlabs-mysql]: http://github.com/puppetlabs/puppetlabs-mysql
  [puppetlabs-package]: http://github.com/puppetlabs/puppetlabs-package
  [puppetlabs-apache-pr-2070]: https://github.com/puppetlabs/puppetlabs-apache/pull/2070
  [DLeich]: https://github.com/DLeich
  [puppetlabs-apache-pr-2069]: https://github.com/puppetlabs/puppetlabs-apache/pull/2069
  [altmas5]: https://github.com/altmas5
  [puppetlabs-haproxy-pr-442]: https://github.com/puppetlabs/puppetlabs-haproxy/pull/442
  [pkaroluk]: https://github.com/pkaroluk
  [puppetlabs-kubernetes-pr-443]: https://github.com/puppetlabs/puppetlabs-kubernetes/pull/443
  [faxm0dem]: https://github.com/faxm0dem
  [puppetlabs-postgresql-pr-1195]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1195
  [osijan]: https://github.com/osijan
  [puppetlabs-stdlib-pr-1130]: https://github.com/puppetlabs/puppetlabs-stdlib/pull/1130
  [reidmv]: https://github.com/reidmv
  [puppetlabs-stdlib-pr-1129]: https://github.com/puppetlabs/puppetlabs-stdlib/pull/1129
  [b4ldr]: https://github.com/b4ldr
  [puppetlabs-stdlib-pr-1128]: https://github.com/puppetlabs/puppetlabs-stdlib/pull/1128
