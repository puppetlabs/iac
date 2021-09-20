---
layout: post
title: "2021-09-20: IAC & DevX Team Status Update"
author: "ia-content"
categories:
  - team
  - status
tags:
  - java
  - puppet-lint
  - pct
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-apache#2193`][puppetlabs-apache-pr-2193]: "Restore Ubuntu 14.04 support in suphp", thanks to [ekohl][ekohl]
- [`puppetlabs-apache#2191`][puppetlabs-apache-pr-2191]: "add double quote on scope parameter", thanks to [aba-rechsteiner][aba-rechsteiner]
- [`puppetlabs-apache#2189`][puppetlabs-apache-pr-2189]: "Drop Debian < 8 and Ubuntu < 14.04 code", thanks to [ekohl][ekohl]
- [`puppetlabs-apt#1007`][puppetlabs-apt-pr-1007]: "(MODULES-11173) Add per-host overrides for apt::proxy", thanks to [maturnbull][maturnbull]
- [`puppetlabs-apt#999`][puppetlabs-apt-pr-999]: "(maint) Set DEBIAN_FRONTEND=noninteractive on upgrade", thanks to [smortex][smortex]
- [`puppetlabs-docker#774`][puppetlabs-docker-pr-774]: "Prefer timeout to time_limit for Facter::Core::Execution", thanks to [smortex][smortex]
- [`puppetlabs-haproxy#498`][puppetlabs-haproxy-pr-498]: "Adding chroot_dir_manage parameter.", thanks to [Tamerz][Tamerz]
- [`puppetlabs-java#488`][puppetlabs-java-pr-488]: "Enabling Rocky Linux for Install", thanks to [pmjensen][pmjensen]
- [`puppetlabs-postgresql#1299`][puppetlabs-postgresql-pr-1299]: "Inline file contents in the catalog", thanks to [ekohl][ekohl]
- [`puppetlabs-postgresql#1296`][puppetlabs-postgresql-pr-1296]: "Fix changing default encoding", thanks to [smortex][smortex]
- [`puppetlabs-postgresql#1279`][puppetlabs-postgresql-pr-1279]: "Use Puppet-Datatype Sensitive for Passwords", thanks to [cocker-cc][cocker-cc]
- [`puppetlabs-stdlib#1209`][puppetlabs-stdlib-pr-1209]: "Added to_toml function", thanks to [nmaludy][nmaludy]

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-java`][puppetlabs-java] (`7.2.0`)
- [`puppet-lint`][puppet-lint] (`2.5.2`)

  [puppetlabs-java]: https://github.com/puppetlabs/puppetlabs-java
  [puppetlabs-apache-pr-2193]: https://github.com/puppetlabs/puppetlabs-apache/pull/2193
  [ekohl]: https://github.com/ekohl
  [puppetlabs-apache-pr-2191]: https://github.com/puppetlabs/puppetlabs-apache/pull/2191
  [aba-rechsteiner]: https://github.com/aba-rechsteiner
  [puppetlabs-apache-pr-2189]: https://github.com/puppetlabs/puppetlabs-apache/pull/2189
  [puppetlabs-apt-pr-1007]: https://github.com/puppetlabs/puppetlabs-apt/pull/1007
  [maturnbull]: https://github.com/maturnbull
  [puppetlabs-apt-pr-999]: https://github.com/puppetlabs/puppetlabs-apt/pull/999
  [smortex]: https://github.com/smortex
  [puppetlabs-docker-pr-774]: https://github.com/puppetlabs/puppetlabs-docker/pull/774
  [puppetlabs-haproxy-pr-498]: https://github.com/puppetlabs/puppetlabs-haproxy/pull/498
  [Tamerz]: https://github.com/Tamerz
  [puppetlabs-java-pr-488]: https://github.com/puppetlabs/puppetlabs-java/pull/488
  [pmjensen]: https://github.com/pmjensen
  [puppetlabs-postgresql-pr-1299]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1299
  [puppetlabs-postgresql-pr-1296]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1296
  [puppetlabs-postgresql-pr-1279]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1279
  [cocker-cc]: https://github.com/cocker-cc
  [puppetlabs-stdlib-pr-1209]: https://github.com/puppetlabs/puppetlabs-stdlib/pull/1209
  [nmaludy]: https://github.com/nmaludy
  [puppet-lint]: https://github.com/puppetlabs/puppet-lint

### The dropping of support

Due to the large amount of major releases that where made during the last time we removed support for an OS from our supported modules and following discussion within the team, it has been decided that going forward metadata changes, i.e. a drop in support, will no longer result in a major release.
In cases where code necesary for said OS to function is removed, i.e. a drop in compatibility, this will still result in a major release, however we will attempt to pair this type of change with other similar major changes in order to keep the amount of major releases down.
This may be subject to change however so please keep in touch and come forward with any questions that you may have.

## DevX Team Updates

As some of you are probably aware of, the PCT tool has been the main focus of the DevX team for the past few months.
It is the first part of a suite of tools that will replace the PDK.
To help clarify our strategy and vision, [Dave][DavidArmstrong] wrote a blog post that was published to [puppet.com](https://puppet.com), last week - [check it out here](https://puppet.com/blog/the-future-of-the-puppet-developer-kit-pdk/).

### PCT 0.4.0

We released version `0.4.0` of the PCT tool on Friday, which brings a number of significant new features:

- `pct install` can now install remote `tar.gz` templates via HTTP/S
- `pct new` now handles templates in the new `0.4.0` format

As highlighted, PCT templates are now in a new format that is **not backwards compatible** with earlier formats.

Check out the [`0.4.0` README entry](https://github.com/puppetlabs/pdkgo/blob/main/CHANGELOG.md#040) for full details.

### `puppet-lint 2.5.2`

There is also a new release of the `puppet-lint` gem which resolves [an issue](https://github.com/puppetlabs/puppet-lint/issues/16) with a F+ in the `double_quoted_strings` check when the string literal `\s` was used in a manfest.
Thanks to [optiz0r][https://github.com/optiz0r] for highlighting.

<!-- check https://tickets.puppetlabs.com/secure/RapidBoard.jspa?rapidView=1176&quickFilter=8745 for other tickets closed out this week that should be mentioned here -->

  [Adrian]:             https://github.com/adrianiurca
  [Ben]:                https://github.com/binford2k
  [Ciaran]:             https://github.com/sanfrancrisko
  [Daiana]:             https://github.com/daianamezdrea
  [Danny]:              https://github.com/carabasdaniel
  [DavidArmstrong]:     https://github.com/da-ar
  [DavidSwan]:          https://github.com/david22swan
  [Lore]:               https://github.com/lionce
  [Michael]:            https://github.com/michaeltlombardi
  [Paula]:              https://github.com/pmcmaw
  [Peter]:              https://github.com/petergmurphy
  [Sheena]:             https://github.com/sheenaajay
  [Supported Modules]:  https://puppetlabs.github.io/iac/modules/
  [Tools]:              https://puppetlabs.github.io/iac/tools/
