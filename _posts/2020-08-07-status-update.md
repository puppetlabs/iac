---
layout: post
title: "7th August 2020: IAC Team Status Update"
author: carabasdaniel
categories:
  - team
  - status
tags:
  - releases
  - shoutouts
  - puppet7
  - apt
  - kubernetes
  - docker
  - language
---

The IAC team has been working on a lot of things over the past week.
We want to share with our community some of the most interesting things.
Here’s a brief overview of what we’ve been up to:

## Module Releases from IAC Team
We've had a few modules released this week:
- [puppetlabs/cisco_ios](https://forge.puppet.com/puppetlabs/cisco_ios) (v1.3.0) 

## Community Contributions
We've had plenty of great community contributions this week:
- [a bit boost to improve the initial installation](https://github.com/puppetlabs/puppetlabs-kubernetes/pull/416) on the puppetlabs-kubernetes module has been finally tested and merged. The next two related PRs are being tested now and hopefully we can get these merged soon. A big thank you goes out to [Marc Schöchlin](https://github.com/scoopex) for these great contributions. 
- [documentation update](https://github.com/puppetlabs/puppetlabs-apt/pull/942) on the puppetlabs-apt module has been merged. Thank you [Garrett Guillotte](https://github.com/gguillotte) for correction and clarification of the module README
- [refactor RSpec tests](https://github.com/puppetlabs/puppetlabs-docker/pull/624) on the puppetlabs-docker module has been merged. Thanks to [crazymind1337](https://github.com/crazymind1337) for significantly improving the readability of the tests and code coverage
 
## Puppet 7
Puppet 7 testing has been making good progress.
We're now in a position where we can rapidly generate configurations to test modules on our internal infrastructure or TravisCI, using [pdksync](https://github.com/puppetlabs/pdksync).
Thanks to [joshcooper](https://github.com/joshcooper) for the very rapid turnaround on [this fix](https://github.com/puppetlabs/puppetlabs-registry/pull/216) for [puppetlabs-registry](https://github.com/puppetlabs/puppetlabs-registry).
Also, a big shout out to the Night's Watch team for their continued help in addressing issues we've discovered.

## Terminology changes
Recent anti-racial movements across the globe have prompted much-needed global change, Puppet is committed to reevaluate our terminology and uses of words and phrases that evoke unintended associations making a concerted effort to provide a non-biased, user-friendly experience through every aspect of our software and documentation. Language matters. As an initial step in this regard, we would like to ask the community, that's always shown great support, to try and avoid using any references to our repository master branches in the future as we are starting to lay down the foundations of these changes by renaming the default branch.

[David Swan][david_swan] has already started work in this regard with these PRs:
- [https://github.com/puppetlabs/puppetlabs-accounts/pull/318](https://github.com/puppetlabs/puppetlabs-accounts/pull/318)
- [https://github.com/puppetlabs/puppetlabs-acl/pull/199](https://github.com/puppetlabs/puppetlabs-acl/pull/199)
- [https://github.com/puppetlabs/puppetlabs-apache/pull/2054](https://github.com/puppetlabs/puppetlabs-apache/pull/2054)
- [https://github.com/puppetlabs/puppetlabs-apt/pull/940](https://github.com/puppetlabs/puppetlabs-apt/pull/940)
- [https://github.com/puppetlabs/puppetlabs-bootstrap/pull/147](https://github.com/puppetlabs/puppetlabs-bootstrap/pull/147)
- [https://github.com/puppetlabs/puppetlabs-chocolatey/pull/218](https://github.com/puppetlabs/puppetlabs-chocolatey/pull/218)
- [https://github.com/puppetlabs/puppetlabs-concat/pull/654](https://github.com/puppetlabs/puppetlabs-concat/pull/654)
- [https://github.com/puppetlabs/puppetlabs-docker/pull/643](https://github.com/puppetlabs/puppetlabs-docker/pull/643)
- [https://github.com/puppetlabs/puppetlabs-dsc/pull/461](https://github.com/puppetlabs/puppetlabs-dsc/pull/461)
- [https://github.com/puppetlabs/puppetlabs-dsc_lite/pull/159](https://github.com/puppetlabs/puppetlabs-dsc_lite/pull/159)
- [https://github.com/puppetlabs/puppetlabs-exec/pull/129](https://github.com/puppetlabs/puppetlabs-exec/pull/129)
- [https://github.com/puppetlabs/puppetlabs-facter_task/pull/127](https://github.com/puppetlabs/puppetlabs-facter_task/pull/127)
- [https://github.com/puppetlabs/puppetlabs-firewall/pull/933](https://github.com/puppetlabs/puppetlabs-firewall/pull/933)
- [https://github.com/puppetlabs/puppetlabs-haproxy/pull/437](https://github.com/puppetlabs/puppetlabs-haproxy/pull/437)
- [https://github.com/puppetlabs/puppetlabs-motd/pull/320](https://github.com/puppetlabs/puppetlabs-motd/pull/320)

## Wrap-up
That concludes this weeks summary. As always we want to thank you all for your continous support and understanding.

[david_swan]:                               https://github.com/david22swan
