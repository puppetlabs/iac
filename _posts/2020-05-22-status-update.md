---
layout: post
title: "22nd May 2020: IAC Team Status Update"
author: pmcmaw
categories:
  - team
  - status
tags:
  - module updates
  - community
  - testing
  - haproxy
  - motd
  - vmpooler
  - abs
  - pdksync
  - pdk
  - honeycomb
  - kubernetes
  - mysql
  - docker
  - pdksync
  - pdk

---
The IAC team has been working on a lot of new things over the past week. We want to share with our community some pretty interesting things. Here's a brief overview of what we've been up to:

## Daiana has been made permanent!

We are absolutely delighted to announce our current intern, [Daiana](https://github.com/daianamezdrea), has recently been offered a permanent job role. Daiana has been a major influence on our community reporting tool for when we are triaging PRs and releasing modules. Some of the work Daiana has been carrying out can be viewed [here](https://github.com/puppetlabs/community_management/pull/22/). We are so excited that she will be hanging around! We are all looking forward to have a celebratory beverage together at some point in the future.

## Module Releases

Modules released this week:
- [puppetlabs/haproxy](https://github.com/puppetlabs/puppetlabs-haproxy) (4.2.1)
- [puppetlabs/motd](https://github.com/puppetlabs/puppetlabs-motd) (4.1.1)

## Community Contributions

We absolutely love our community contributors, they are always ready to help and they have excellent ideas. Here are some highlights of this week:

Thank you to Trey Dockendorf for raising an issue on the latest release of the PDK, and to [Jesse Scott](https://github.com/scotje) for providing a [fix](https://github.com/puppetlabs/pdk/pull/883). [DavidS](https://github.com/DavidS) has now merged this and this fix will make it out in the next release.

Thank you to [Victor Cabezas](https://github.com/Wiston999) for a fantastic PR for [puppetlabs/kubernetes](https://github.com/puppetlabs/puppetlabs-kubernetes). Its great to see such attention to detail in a PR from a community member.

Thank you to [andeman](https://github.com/andeman) for contributing to our [puppetlabs/mysql](https://github.com/puppetlabs/puppetlabs-mysql) module and providing us with such a great feature.

Thank you to [https://github.com/vchepkov](Vadym Chepkov) for your [Docker PR](https://github.com/puppetlabs/puppetlabs-docker/pull/613). Housekeeping on our modules is always beneficial and we really appreciate you taking the time to contribute.

## Community Management Tool

We wanted to have all the information about our supported modules in one place. We decided to change the data source of the [Community Tool](https://puppetlabs.github.io/community_management/) from a local file called `modules.json` to the online available `https://puppetlabs.github.io/iac/modules.json` which is generated from the same information that is powering the [team's modules page](https://puppetlabs.github.io/iac/modules/). You can check the new updates [here](https://github.com/puppetlabs/community_management/pull/22).

The report for our tooling has been using the [same mechanism](https://github.com/puppetlabs/community_management/pull/12) since March. We will continue to build all our future automation tooling based on this data set, so that we can update-once-run-everywhere.

## PDKSync Runs

[David Swan](https://github.com/david22swan) has performed 2 PDKSync runs this week to include generic template updates in our modules and to add Ubuntu 20.04 support. [Danny](https://github.com/carabasdaniel) has been running one to switch our default provisioner from VMPooler to ABS for our weekly and pre-release CI runs. Travis was busy! `:D`

## Making it Possible to Visualize Data

[DavidS](https://github.com/DavidS) has been working hard on making use of [honeycomb](https://honeycomb.io/) to allow us to visualize data on pretty dashboards. Our new dashboard this week will track our migration from VMPooler to ABS. It is super exciting that we can now see dashboards and drill down rather than scrolling through large log files.

Here you can see when we started rolling out the first changes:
![A graph comparing 1073 vmpooler calls with 502 ABS calls, which started around the 18th]({% link /assets/2020-05-22-status-update/vmpooler-abs-migration-tracker.png %})

## Litmus Image Creation

Since the end of 2019 we're using custom-built [images](https://github.com/puppetlabs/litmusimage) to test modules with [litmus](https://github.com/puppetlabs/puppet_litmus). Litmus image creation is now part of the IAC team OS certification process. As part of our work on validating all modules for Ubuntu 20.04, [David Swan](https://github.com/david22swan) put in [a quick PR](https://github.com/puppetlabs/litmusimage/pull/23/files) to add it to our list of images. Being able to easily create a new Litmus image enables the IAC to team run OS certification test across multiple modules quickly. Great Job [Florin](https://github.com/florindragos) on the Litmus image creation scripting.

## The IAC Team Adapting to the New 'Norm'

Everyone in the team seems to have started adapting to the new ‘norm’ of working from home every day. It seems everyone has started trying out new things. Here are some of the things we have been getting up to:

[DavidS](https://github.com/DavidS) has been taking Oscar and Miku out walking almost daily, soaking up the lovely views around Belfast and of course playing [factorio](https://factorio.com/) for way too long. Can we blame him when confined to the house, lets just refer to it mastering skills online.

Norman over the past year has had a lot of landscaping carried out in his garden therefore he finds himself spending more time in his garden than before. With the weather we have been having in Belfast recently he would be crazy to miss the opportunity.

[Ciaran](https://github.com/sanfrancrisko) now knows his neighborhood by the back of his hand, has taken up more cooking opportunities at home (he currently has enough Bolognese in his freezer to feed the whole IAC team), is getting a big nostalgia hit playing Streets of Rage 4 online with his mate and has big plans on getting back into playing guitar, it just hasn’t happened yet. Sounds like Ciaran has been doing great at keeping busy!

[Danny](https://github.com/carabasdaniel) has found himself spending more time chilling out and reading books and when he is not doing that he is ‘fine tuning’ his video gaming skills.

[David Swan](https://github.com/david22swan) carries out a vigorous home workout regime on Tuesday, Wednesday and Thursdays. Way to go David, serious commitment there!

[Sheena](https://github.com/sheenaajay) is currently home schooling 2 lovely girls. Although when they have some down time she is exploring new recipes with them.

[Daiana](https://github.com/daianamezdrea) has started to do some home workouts and has started eating healthy. I wonder if this is a result of mastering how to bake a perfect lava cake? I also wonder how shipping a lava cake would work!?

[Adrian](https://github.com/adrianiurca) has started spending more time soaking up the surrounding views and has taken up some gardening. There is nothing more therapeutic than admiring blooming flowers at this time of the year.

Finally [me](https://github.com/pmcmaw), In my down time I have been enjoying walks, for a while I collected wild flowers,  pressed them and put them into a frame to remind me of this strange time. I also spend most of my time playing with my 11 month old baby. This ranges from getting paint EVERYWHERE to letting her play in multi colored spaghetti or creating strange toys such as a rain cloud made out of cotton wool, tin foil and plastic bags.

## Wrap-up

That's it for this weeks update, a big THANK YOU for all your contributions and support.
