---
layout: post
title: "2020-11-06: IAC Team Status Update"
author: adrianiurca
categories:
  - team
  - status
tags:
  - mysql
  - cloud-ci
  - puppet7
  - apache
  - docker
  - postgresql
  - stdlib
  - provision
  - rspec-puppet
  - lint
  - strings
  - pdk-templates
  - puppet-module-gems
  - puppetize
---

It was an interesting week for IAC team and we have exciting news for you.

## Puppet 7 / Ruby 2.7 Certification

We are now entering the final stages of our Puppet 7 testing. With the Puppet 7 release imminent, and our Cloud CI project nearing completion, we are hoping to have Puppet 7 acceptance tests rolled out on it very soon. Before that, we are working to get unit tests running on TravisCI with Ruby 2.7.

## Outreach

In the [24th "everyonecancontribute" Kaeffchen (german)](https://everyonecancontribute.com/post/2020-11-04-kaeffchen-24-puppet-insights/) with [dnsmichi](https://twitter.com/dnsmichi), David Schmitt talks about the up and coming puppet 7 features and our new security and compliance focused products.

## Disha's 10th Week: PTO and First Ticket Completed

A message from our intern:
> Hi all,
> This week I haven't got a lot to say.... I got my first PTO in Puppet at the start of the week from Monday to Wednesday.
> I returned to work on Thursday morning and started doing litmus acceptance testing on the tomcat module which was the first ticket assigned to me before going on PTO. I am delighted to have it completed!
> I would also like to say thanks to my mentor Ciaran for a 1:1 session on how to do effective debugging of errors. Thanks Ciaran for such a useful session.
> That's all for this week.
> Have a good weekend everyone!

## Cloud CI update

As we move closer to ironing out some of the bugs we have set our targets on a couple of windows modules for the initial porting to use Cloud resources in their acceptance testing.
We have started with setting up a [PR for puppetlabs-acl](https://github.com/puppetlabs/puppetlabs-acl/pull/211) and as soon as we are happy with the workflow puppetlabs-iis and registry will follow.
For a quick glance at a demo on how this setup will help in the future please take a look at "The new Puppet Developer Experience: it's all about you" presented at the [Puppetize Digital 2020](https://digital.puppetize.com) event by Ben Ford.

## Thanks to James Pogran

Many thanks to [James][jpogran] from the Bolt team for helping us to resolve failing tests on [puppetlabs-concat][concat] module.

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`provision#112`][provision-pr-112]: "docker: support podman; improve handling of OS distribution/version for non-litmusimage images", thanks to [reenberg][reenberg]
- [`puppetlabs-apache#2077`][puppetlabs-apache-pr-2077]: "Add missing tests for RHEL 8", thanks to [yakatz][yakatz]
- [`puppetlabs-apache#2072`][puppetlabs-apache-pr-2072]: "Add ssl_proxy_machine_cert_chain param to vhost class", thanks to [AbelNavarro][abelnavarro]
- [`puppetlabs-docker#673`][puppetlabs-docker-pr-673]: "Ensure image digest checksum before starting", thanks to [tmanninger][tmanninger]
- [`puppetlabs-mysql#1328`][puppetlabs-mysql-pr-1328]: "Add compatibility for Amazon Linux 2", thanks to [greno2][greno2]
- [`puppetlabs-mysql#1323`][puppetlabs-mysql-pr-1323]: "Fix package for python bindings on Ubuntu 20.04", thanks to [tobias-urdin][tobias-urdin]
- [`puppetlabs-postgresql#1202`][puppetlabs-postgresql-pr-1202]: "Set default PostgreSQL version for Fedora 33", thanks to [blackknight36][blackknight36]
- [`puppetlabs-stdlib#1135`][puppetlabs-stdlib-pr-1135]: "Allow start/end checks on empty strings", thanks to [jvrsantacruz][jvrsantacruz]
- [`pdk-templates#356`][pdk-templates-pr-356]: "(#353) Add an empty, commented .sync.yml", thanks to [silug][silug]
- [`puppet-module-gems#144`][puppet-module-gems-pr-144]: "Update puppet-debugger gem to 1.0 for ruby 2.4+", thanks to [logicminds][logicminds]
- [`puppet-strings#261`][puppet-strings-pr-261]: "fix minor typo", thanks to [baldurmen][baldurmen] and the following people who helped get it over the line ([binford2k][binford2k])
- [`puppet-lint#933`][puppet-lint-pr-933]: "Move most CI to GH actions", thanks to [rodjek][rodjek]
- [`puppet-lint#932`][puppet-lint-pr-932]: "Correctly lex non-keyword type tokens in interpolation", thanks to [rodjek][rodjek]
- [`puppet-lint#919`][puppet-lint-pr-919]: "Improve Rake task", thanks to [raphink][raphink] and the following people who helped get it over the line ([rodjek][rodjek])
- [`rspec-puppet#814`][rspec-puppet-pr-814]: "(MAINT) Release prep for 2.8.0 release", thanks to [scotje][scotje]
- [`rspec-puppet#813`][rspec-puppet-pr-813]: "Add high-level TOC links to README", thanks to [op-ct][op-ct]

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-mysql`][puppetlabs-mysql] (`10.8.0`)

  [puppetlabs-mysql]: http://github.com/puppetlabs/puppetlabs-mysql
  [provision-pr-112]: https://github.com/puppetlabs/provision/pull/112
  [reenberg]: https://github.com/reenberg
  [puppetlabs-apache-pr-2077]: https://github.com/puppetlabs/puppetlabs-apache/pull/2077
  [yakatz]: https://github.com/yakatz
  [puppetlabs-apache-pr-2072]: https://github.com/puppetlabs/puppetlabs-apache/pull/2072
  [abelnavarro]: https://github.com/AbelNavarro
  [puppetlabs-docker-pr-673]: https://github.com/puppetlabs/puppetlabs-docker/pull/673
  [tmanninger]: https://github.com/tmanninger
  [puppetlabs-mysql-pr-1328]: https://github.com/puppetlabs/puppetlabs-mysql/pull/1328
  [greno2]: https://github.com/greno2
  [puppetlabs-mysql-pr-1323]: https://github.com/puppetlabs/puppetlabs-mysql/pull/1323
  [tobias-urdin]: https://github.com/tobias-urdin
  [puppetlabs-postgresql-pr-1202]: https://github.com/puppetlabs/puppetlabs-postgresql/pull/1202
  [blackknight36]: https://github.com/blackknight36
  [puppetlabs-stdlib-pr-1135]: https://github.com/puppetlabs/puppetlabs-stdlib/pull/1135
  [jvrsantacruz]: https://github.com/jvrsantacruz
  [pdk-templates-pr-356]: https://github.com/puppetlabs/pdk-templates/pull/356
  [silug]: https://github.com/silug
  [puppet-module-gems-pr-144]: https://github.com/puppetlabs/puppet-module-gems/pull/144
  [logicminds]: https://github.com/logicminds
  [puppet-strings-pr-261]: https://github.com/puppetlabs/puppet-strings/pull/261
  [baldurmen]: https://github.com/baldurmen
  [binford2k]: https://github.com/binford2k
  [puppet-lint-pr-933]: https://github.com/rodjek/puppet-lint/pull/933
  [rodjek]: https://github.com/rodjek
  [puppet-lint-pr-932]: https://github.com/rodjek/puppet-lint/pull/932
  [puppet-lint-pr-919]: https://github.com/rodjek/puppet-lint/pull/919
  [raphink]: https://github.com/raphink
  [rspec-puppet-pr-814]: https://github.com/rodjek/rspec-puppet/pull/814
  [scotje]: https://github.com/scotje
  [rspec-puppet-pr-813]: https://github.com/rodjek/rspec-puppet/pull/813
  [op-ct]: https://github.com/op-ct
  [adrian]: https://github.com/adrianiurca
  [ben]: https://github.com/binford2k
  [ciaran]: https://github.com/sanfrancrisko
  [daiana]: https://github.com/daianamezdrea
  [danny]: https://github.com/carabasdaniel
  [davidschmitt]: https://github.com/DavidS
  [davidswan]: https://github.com/david22swan
  [disha]: https://github.com/Disha-maker
  [lore]: https://github.com/lionce
  [michael]: https://github.com/michaeltlombardi
  [paula]: https://github.com/pmcmaw
  [sheena]: https://github.com/sheenaajay
  [supported modules]: https://puppetlabs.github.io/iac/modules/
  [tools]: https://puppetlabs.github.io/iac/tools/
  [jpogran]: https://github.com/jpogran
  [concat]: http://github.com/puppetlabs/puppetlabs-concat
