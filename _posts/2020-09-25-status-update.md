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

## Semi-Automated Blog Writing

Well, the way the world is going, everything will be automated soon, won't it?
This week's blog post was partially written by a new script that will compile:

- The modules released since last week's update
- The awesome contributions from you, in the Community, that have landed in to `puppetlabs:main`

These are sections that are there every week and the previous process to compiling everything in to Markdown, was a becoming a tedious, manual one.
So like all repetitive, manual stuff, we automated it! :smiley:

If you're interested in how it all works, check out [`iac#114`][iac-pr-114] and/or the [README][iac-bootstrap-blog-tools].

And before I continue I would just like to give a personal thanks to our very own [Ciaran][sanfrancrisko] for getting this up and working, cutting at least an hour of work from the writing of this post.

## CI Improvements

Over the last few months or so work has been put in to improve our CI coverage with this short message from our very own [Daniel Carabas][carabasdaniel] explaining more:

```
The IAC Team is currently working on a CI improvement that will increase the testing coverage across all our supported modules and allow contributors to check and run unit and acceptance tests on more platforms. Please look forward to more details about our improved CI in the upcoming weeks.
```

## New Blogs

We've got several new blog posts out for your viewing pleasure:

- First from [Michael Lombardi][michaeltlombardi] we have an excellent blog which (spoiler alert!) announces the official release of our brand new module [Puppet.Dsc][dsc-repo]! Please check it out [here]({% link _posts/2020-09-21-dsc-release.md %}).
- Next from [Adrian Iurca][adrianiurca] we have a lovely blog post detailing some important changes that were recently made to the [docker][puppetlabs-docker] module. Just click the following link to take a [look]({% link _posts/2020-09-23-docker-params-change-detection.md %}).
- Finally from this week onwards, Disha's blog posts are in a new, dedicated section of our site called [Life as an Internet at Puppet](https://puppetlabs.github.io/iac/docs/life_of_intern)

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
[iac-pr-114]: https://github.com/puppetlabs/iac/pull/114
[iac-bootstrap-blog-tools]: https://github.com/puppetlabs/iac/tree/master/bin/blog_tools
[binford2k]: https://github.com/binford2k
[carabasdaniel]: https://github.com/carabasdaniel
[sanfrancrisko]: https://github.com/sanfrancrisko
[michaeltlombardi]: https://github.com/michaeltlombardi
[dsc-repo]: https://github.com/puppetlabs/Puppet.Dsc
[adrianiurca]: https://github.com/adrianiurca
[puppetlabs-docker]: https://github.com/puppetlabs/puppetlabs-docker