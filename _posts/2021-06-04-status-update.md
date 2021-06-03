---
layout: post
title: "2021-06-04: IAC & DevX Team Status Update"
author: carabasdaniel
categories:
  - team
  - status
tags:
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-java_ks#370`][puppetlabs-java_ks-pr-370]: "(MODULES-11067) Fix keytool output parsing", thanks to [durist][durist]
- [`puppetlabs-kubernetes#519`][puppetlabs-kubernetes-pr-519]: "Allow configuring of waiting times during sa creation", thanks to [ZloeSabo][ZloeSabo]
- [`puppet-strings#276`][puppet-strings-pr-276]: "README.md: update link to docs", thanks to [kenyon][kenyon]

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-vcsrepo`][puppetlabs-vcsrepo] (`5.0.0`)

  [puppetlabs-vcsrepo]: https://github.com/puppetlabs/puppetlabs-vcsrepo
  [puppetlabs-java_ks-pr-370]: https://github.com/puppetlabs/puppetlabs-java_ks/pull/370
  [durist]: https://github.com/durist
  [puppetlabs-kubernetes-pr-519]: https://github.com/puppetlabs/puppetlabs-kubernetes/pull/519
  [ZloeSabo]: https://github.com/ZloeSabo
  [puppet-strings-pr-276]: https://github.com/puppetlabs/puppet-strings/pull/276
  [kenyon]: https://github.com/kenyon

### Cloud CI Update
The work on our P.o.C for developer box provisioning is making progress. We have managed to reduce a couple vulnerabilities with the help of the security team and we have started work on the configuration improvements needed to limit developer box provisioning.

### PCT 0.1.0 Experimental Release
The DevX team are pleased to announce the availability of our new prototype for Puppet Content Templates (PCT)!
Version `0.1.0` is a pre-release and still very much experimental, however, we'd love to hear feedback on how the new experience is in creating Puppet content.
Check out [James's][James] [blog post]({% link  _posts/2021-06-04-pct-early-release.md %}) for all the details, including how to download and install it and provide feedback.

### Trusted Contributors is now live!
Not to brag too much, we have some pretty good Puppet developers within our team. But maintaining high quality modules is more than just knowing how to write code to manage the right configuration files. Often knowing the idiomatic usage patterns is even more important.
The domain experts are those who use our modules and the technology stacks those modules manage. They know what kind of functionality the module might need, or why it should work one way and not the other. The new [Trusted Contributors](https://puppet.com/ecosystem/trusted-contributors/) program empowers these experts to help make a difference with partial ownership and the ability to participate in roadmap direction. Read more about it and apply [here](https://puppet.com/ecosystem/trusted-contributors/).

  [Adrian]:             https://github.com/adrianiurca
  [Ben]:                https://github.com/binford2k
  [Ciaran]:             https://github.com/sanfrancrisko
  [Daiana]:             https://github.com/daianamezdrea
  [Danny]:              https://github.com/carabasdaniel
  [DavidArmstrong]:     https://github.com/da-ar
  [DavidSchmitt]:       https://github.com/DavidS
  [DavidSwan]:          https://github.com/david22swan
  [Disha]:              https://github.com/Disha-maker
  [James]:              https://github.com/jpogran
  [Lore]:               https://github.com/lionce
  [Michael]:            https://github.com/michaeltlombardi
  [Paula]:              https://github.com/pmcmaw
  [Sheena]:             https://github.com/sheenaajay
  [Supported Modules]:  https://puppetlabs.github.io/iac/modules/
  [Tools]:              https://puppetlabs.github.io/iac/tools/
