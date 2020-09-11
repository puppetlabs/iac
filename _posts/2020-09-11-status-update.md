---
layout: post
title: "11th September 2020: IAC Team Status Update"
author: sanfrancrisko
categories:
  - team
  - status
tags:
  - releases
  - shoutouts
  - apache
  - inifile
  - newstart
  - learningvm
---

Hi everybody!
Here's an update from the IAC Team for the week that was.
It's worth mentioning that it has been quite an eventful week with some unexpected fires, here and there.
Nothing we and our wonderful Puppet colleagues can't get on top of, but, worth highlighting as this week's update may be a little light!
We'll divulge more details in due course, after we're on top of the fixes.

Speaking of fires, we hope that any of our Community members and Puppet colleagues on the US West Coast are keeping safe at the moment and that life hasn't been impacted too adversely with the wildfires coarsing through many parts of California, Washington and of course, our HQ's home state of Oregon.

Stay safe!

## Welcome Back David!
Many of you in the Community (and of course, Puppet!) will know who [David][davids] is - he is definitely one of the most integral members of both the Community and Puppet, interally.
[David][davids] had to take some time away back in July - we mentioned this in our [2020-07-17 blog post](https://puppetlabs.github.io/iac/team/status/2020/07/17/status-update.html).
We're _extremely_ happy to be able to formally welcome [David][davids] back - for the two months or so you were away, it certainly highlighted how pivotal you are to the IAC Team!

I'm sure everyone in the wider Puppet Community are also glad to see you back too! :)

## Module Releases from IAC Team
We have two modules released this week:

- [puppetlabs-inifile](https://github.com/puppetlabs/puppetlabs-inifile) (`v.4.3.0`)
- [puppetlabs-ntp](https://github.com/puppetlabs/puppetlabs-ntp) (`v.8.4.0`)

## Community Contributions
- [`puppetlabs-apache#2063`][puppetlabs-apache-pr-2063]: We'd lke to thank [nbarrientos][nbarrientos] for his fix that ensures the correct default shared lib path for `mod_wsgi` on RHEL 8.
The responsiveness was very much appreciated by the team - a pleasure working with you!

## Puppet 7 & Ruby 2.7 Testing
We continue to expand the integration testing effort of the Puppet 7 nightly builds against our core, [supported modules]({% link modules.html %}).
Thanks to [Sheena][sheenaajay] and [Norman][norman] for leading the test effort whilst I was out on vacation.

## Disha's Second Week
We didn't scare [Disha][dishakareer] off, by the looks of things, so we must be doing something right :)
[Disha][dishakareer] has been working through some training material set out by the team and here's how she's been getting on so far, in her own words:

> I am currently working on the learning VM quest guide with [Paula][paula], [Daiana][daiana] and [Ciaran][sanfrancrisko] to solve an issue for verifying certificates. 
  We hope to get this issue resolved soon so that I can continue with the learning VM training. 
  The link to the Quest Guide for the Puppet Learning VM is [here](https://github.com/puppetlabs/puppet-quest-guide).
  I also had a quick session with [Ciaran][sanfrancrisko] to learn markdown language for writing weekly team blogs. 
  I will be exploring markdown language via this [tutorial](https://www.markdowntutorial.com/) provided by [Ciaran][sanfrancrisko]. 
  There will be a dedicated training session on markdown language in the coming weeks.  
  Thank you to the team of IAC for helping me this week in the training sessions! 
  I am now looking forward to next week and all the exciting stuff to learn.

## Wrap Up
Glad to have you on board [Disha][dishakareer] and great to see you progressing really well in such a short space of time! :)

That's all for this week from the IAC Team! Stay safe!

[nbarrientos]:                  https://github.com/nbarrientos
[puppetlabs-apache-pr-2063]:    https://github.com/puppetlabs/puppetlabs-apache/pull/2063
[dishakareer]:                  https://github.com/disha-maker
[sheenaajay]:                   https://github.com/sheenaajay
[norman]:                       https://www.linkedin.com/in/norman-heaney-b52bb5
[sanfrancrisko]:                https://github.com/sanfrancrisko
[daiana]:                       https://github.com/daianamezdrea
[paula]:                        https://github.com/pmcmaw
[davids]:                       https://github.com/DavidS