---
layout: post
title: "Puppetize Digital 2020 - Content Selection"
author: dev_el_ops
categories:
  - puppet
  - conference
tags:
  - content
  - demos
  - tips-and-tricks
  - videos
---

Last week saw [Puppetize Digital 2020](https://digital.puppetize.com/), our annual conference on all things Puppet.
Over the weekend, the production team uploaded all the talks to [the Puppet YouTube channel](https://www.youtube.com/user/PuppetLabsInc/videos), so if you missed anything, you can now catch up at your own leisure.
There is a [playlist](https://www.youtube.com/playlist?list=PLV86BgbREluXpEPnW_Bb4kgZAlGit4EnW) with all videos, and in this post I'll directly link to my favourites - of course focused on Puppet Content and the IAC team's work.

## Puppet Pair Programming with Visual Studio Code

The [Puppet VSCode Plugin](https://puppet-vscode.github.io/) has evolved into THE canonical way to edit puppet modules.
The authors of the plugin, [James Pogran](https://www.linkedin.com/in/jamespogran/) and [Glenn Sarti](https://www.linkedin.com/in/glenn-sarti/) are sharing the newest updates to the plugin, as well as some of the benefits of working with a modern, full-featured Development Environment:

{% youtube j3o-U1c_dXs 800 450 %}

Since last week we also provide a default [gitpod](https://gitpod.io) and [codespaces](https://github.com/features/codespaces) environment on our supported modules. This way you can try out and use all of that goodness directly from your browser.

## The new Puppet Developer Experience: it's all about you

[Ben Ford](https://www.linkedin.com/in/binford2k/), our Developer Advocate and Product Manager, on the state of Puppet Content.

* recent updates to the Forge in form and function
* announcing the Trusted Contributor programme
* a demo by [Daniel Carabas](https://www.linkedin.com/in/daniel-carabas-b2bb0851/) to show off our new public Cloud CI for modules

{% youtube FspzumfFvBg 800 450 %}

## Puppetizing DSC

As the IAC's headline feature this year, [Michael Lombardi](https://www.linkedin.com/in/michaeltlombardi/) is talking about how we finally fixed the "DSC-update" problem.
From now on, we can publish up-to-date puppet wrappers of [all DSC module from the gallery](https://www.powershellgallery.com/packages) (select "DSC Resource" in the filters) to the new [DSC namespace on the forge](https://forge.puppet.com/dsc).
This means that any improvement on upstream DSC resources will become available in a timely manner - and without additional build steps - to all Puppet users.
The way it is designed also means that from this point forward, everyone can build their local DSC resources into a puppet module using the [Puppet.Dsc Powershell Module](https://www.powershellgallery.com/packages/Puppet.Dsc).


{% youtube i-eo58NaYKg 800 450 %}

## Automate Everything

If you need to manage a lot of module repositories, [Chris Tessmer](https://github.com/op-ct) has your back.
Based on a few scripts and bolt, he single-handedly (and very handily) replaces modulesync and pdksync with a much nicer alternative.
[puppetsync](https://github.com/op-ct/puppetsync) is a set of tasks and plans supporting managing [SIMP](https://forge.puppet.com/simp)'s modules on github.
In his talk, Chris shows how it is used, and a number of useful tips and tricks for working with bolt plans.


{% youtube 48m8b5VRWoY 800 450 %}


## Further Content Watching

* [ServiceNow integration](https://www.youtube.com/watch?v=mDhmxH0hi9Q&list=PLV86BgbREluXpEPnW_Bb4kgZAlGit4EnW&index=5)
* [Preparing People for Proper Patching with Puppet Plans](https://www.youtube.com/watch?v=PEn5UZR0bso&list=PLV86BgbREluXpEPnW_Bb4kgZAlGit4EnW&index=8) (also aspirant for alliteration award)
* [Roles and Profiles](https://www.youtube.com/watch?v=55KSc63W1_E&list=PLV86BgbREluXpEPnW_Bb4kgZAlGit4EnW&index=18)
* [Application Stack Builds](https://www.youtube.com/watch?v=hYdF5vJu_HA&list=PLV86BgbREluXpEPnW_Bb4kgZAlGit4EnW&index=20)
* [Automating Windows](https://www.youtube.com/watch?v=xLF6UkzpBQ4&list=PLV86BgbREluXpEPnW_Bb4kgZAlGit4EnW&index=24)
  * More in-depth info in the [workshop](https://www.youtube.com/watch?v=NFnVSENjRGs&list=PLV86BgbREluXpEPnW_Bb4kgZAlGit4EnW&index=43)
* [Update your code safely](https://www.youtube.com/watch?v=bbZ9T3Hp_xI&list=PLV86BgbREluXpEPnW_Bb4kgZAlGit4EnW&index=26)
* [Git Workflows for Puppet](https://www.youtube.com/watch?v=8FblErxC1OY&list=PLV86BgbREluXpEPnW_Bb4kgZAlGit4EnW&index=33)

You can find the [entire playlist on YouTube](https://www.youtube.com/playlist?list=PLV86BgbREluXpEPnW_Bb4kgZAlGit4EnW).
