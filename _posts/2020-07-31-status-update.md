---
layout: post
title: "31th July 2020: IAC Team Status Update"
author: david22swan
categories:
  - team
  - status
tags:
  - releases
  - shoutouts
  - firewall
  - websphere_application_server
  - puppet7
  - vagrant
  - litmus
  - docker
  - apache
  - tomcat
---

It's Friday - time for another status update from the IAC Team!
Here's an overview of some of the work we and the community have been up to recently:

## Module Releases from IAC Team
We've had a few modules released this week:
- [puppetlabs-firewall][firewall-forge][`v2.5.0`][firewall-2-5-0]
- [puppetlabs-websphere_application_server][websphere_application_server-forge][`v2.1.0`][websphere_application_server-2-1-0]

## Community Contributions
We've had plenty of great community contributions this week:
- [kenyon][kenyon] [spotted a mistake in the supported list][docker-641] for the [Docker module][docker].
- [kajinamit][kajinamit] has given us two PRs for the [Apache module][apache], the first of which [standardises the use of distrelease within the module][apache-2053] to ensure that the same logic is used to retrieve the Major version throughout, while the second sets [`python3-mod_wsgi` to be used in place of `mod_wsgi` on CentOS 8][apache-2052] as the older name no longer works.
- [bFekete][bFekete] has put in a PR to [increase the puppetlabs-concat lower bound][tomcat-404] within the [Tomcat module][tomcat].

## Newly released blog
In response to some questions from the community, the wonderfully talented [David Swan][david_swan] a proud member of the IAC team, has released a new blog post detailing the use of Litmus with Vagrant, covering both the basic usage as well as some more detailed functions. So if you have some free time or just want to learn more about Vagrant please give it a look. You can find it through the link shown [here][litmus-vagrant].

## Puppet 7
Testing with the Puppet 7 nightly builds began in earnest, this week.
Whilst building out our automation for more extensive and regular testing (_using [pdksync][pdksync] at it's core_), we have been running tests against a subset of the [supported modules]({% link modules.html %}).
So far, testing has generally been quite positive, with some minor issues arising.
Fortunately, we work with awesome colleagues who are very quick to react to any issues we discover, helping with the debugging process and providing fixes really quickly.
Thanks to [joshcooper][joshcooper], we hope to have a fix for one of these issues quite soon!
[gimmyxd][gimmyxd] and [mihaibuzgau][mihaibuzgau] are helping to analyse the other issue we're currently encountering and [binford2k][binford2k] has been assisting in how we communicate any potential impacts to the Puppet Community.
On that note, it goes without saying, we are doing everything possible to make the jump to Puppet 7 as seamless as possible and provide clear communication to the Community for anything that you will need to be aware of.

[puppetlabs-websphere_application_server]:  https://github.com/puppetlabs/puppetlabs-websphere_application_server
[websphere_application_server-forge]:       https://forge.puppet.com/puppetlabs/websphere_application_server
[websphere_application_server-2-1-0]:       https://forge.puppet.com/puppetlabs/websphere_application_server/2.1.0/changelog
[puppetlabs-firewall]:                      https://github.com/puppetlabs/puppetlabs-firewall
[firewall-forge]:                           https://forge.puppet.com/puppetlabs/firewall
[firewall-2-5-0]:                           https://forge.puppet.com/puppetlabs/firewall/2.5.0/changelog
[kenyon]:                                   https://github.com/kenyon
[docker]:                                   https://github.com/puppetlabs/puppetlabs-docker
[docker-641]:                               https://github.com/puppetlabs/puppetlabs-docker/pull/641
[kajinamit]:                                https://github.com/kajinamit
[apache]:                                   https://github.com/puppetlabs/puppetlabs-apache
[apache-2052]:                              https://github.com/puppetlabs/puppetlabs-apache/pull/2052
[apache-2053]:                              https://github.com/puppetlabs/puppetlabs-apache/pull/2053
[bFekete]:                                  https://github.com/bFekete
[tomcat]:                                   https://github.com/puppetlabs/puppetlabs-tomcat
[tomcat-404]:                               https://github.com/puppetlabs/puppetlabs-tomcat/pull/404
[david_swan]:                               https://github.com/david22swan
[mihaibuzgau]:                              https://github.com/mihaibuzgau
[gimmyxd]:                                  https://github.com/gimmyxd
[joshcooper]:                               https://github.com/joshcooper
[binford2k]:                                https://github.com/binford2k
[litmus-vagrant]:                           https://puppetlabs.github.io/iac/docs/LitmusVagrantTesting.html
[pdksync]:                                  https://puppetlabs.github.io/iac/tools/pdksync.html
