---
layout: post
title: "DSC + Puppet: Incoming!"
author: michaeltlombardi
categories:
  - news
  - roadmap
tags:
  - powershell
  - dsc
  - windows
---

As [Glenn][glenn] and I alluded to on the [PowerScripting Podcast][podcast], our team has been hard at work re-envisioning how we want to present the DSC + Puppet story for our users.

[Long story short][iac-41], for lots of reasons, our [original implementation][dsc-module] for calling DSC resources from inside Puppet (shoutout to [Marc Sutter][msutter], the initial implementer!) was getting fragile, stale, and maintenance costs kept rising.

As a stop gap, we put together the [dsc_lite][dsc_lite] module for people to use which dropped the guardrails and help in exchange for letting you just get to work if you needed to use it.
Essentially the thinnest of wrappers over [`Invoke-DscResource`][invoke-docs], requiring you to get those resources onto the target and to pass an arbitrary hash of _hopefully_ correct properties to the DSC resource;
no way to tell if you goofed til run time.

We made [dsc_lite][dsc_lite] for the DSC expert, [basically](https://github.com/puppetlabs/puppetlabs-dsc_lite/blob/master/README_Tradeoffs.md).
But as time went on and we could no longer use our old builder to update our original module...
we were leaving a **lot** of people in the cold with a less than stellar UX.

So my team decided to change that story.

We talked it out, [planned some stuff][iac-41] and adopted [James Pogran][james]'s INCREDIBLE [prototype work][prototype]—he did 80% of the initial work for this, basically all the hardest bits. 💜

## So, About This Builder

The [whole thing][repo] is written in and relies on PowerShell, not Ruby.
The only non-PowerShell dependency is the [Puppet Development Kit][pdk] for scaffolding the Puppet module out (no reason to re-implement that!)

It builds on two important technologies:

1. The [resource_api][resource_api] (largely developed by [David Schmitt][david]), makes writing Puppet types and providers _actually_ doable for people like me—the type file is just data, the provider adheres to a simple schema.
2. The [ruby-pwsh][ruby-pwsh] gem, based on work by numerous members of the former Windows team at Puppet:
   [Glenn Sarti][glenn], [James Pogran][james], [Ethan Brown][ethan], [Bill Hurt][bill], [Erick Banks][erick], [Rob Reynolds][rob], and me.
   This gem is a library that gives you a [PowerShell manager][manager], enabling you to interop between PowerShell & Ruby.
   That lets us take advantage of having a PowerShell host process and not shell out for every command.
   It's _much_ faster and paves the way for some really cool improvements.
   It's also what powers all of our Puppet modules which rely heavily on PowerShell calls!

This builder scaffolds a new Puppet module, vendors a PowerShell module from the Gallery (_with_ dependencies), introspects that module for DSC resources, then generates a Puppet resource_api type and provider for each DSC resource.

It has a [helper function][helper] which desperately needs refactoring but which parses the [AST][ast-intro] for the DSC resource's source file (if it can) to retrieve the reference docs, default values, and whether the parameter is mandatory for get/set operations.
If it _can't_ parse the AST (as with binary/class-based DSC resources in this iteration) it still works--
it just won't have the reference docs and will rely on the best info it can find in the output from [`Get-DscResource`][get-docs].

Okay, _fine_, _**weeeee**_, it [builds a module][test-module], great.
But what does using it look like?
I'm glad you asked.
First of all, here's what a very basic manifest using a [puppetized module][test-module] looks like--in this case, [PowerShellGet][psget].

```puppet
dsc_psrepository {'Add team shared module folder as a repository':
    dsc_name               => 'foo',
    dsc_ensure             => present,
    # This location is nonsense, can be any valid folder on your
    # machine or in a share, any location the SourceLocation param
    # for the DSC resource will accept.
    dsc_sourcelocation     => 'C:\Program Files',
    dsc_installationpolicy => untrusted,
}

dsc_psrepository {'Trust the PowerShell Gallery':
    dsc_name               => 'PSGallery',
    dsc_ensure             => present,
    dsc_installationpolicy => trusted,
}

dsc_psmodule {'Ensure Ruby is Manageable via uru':
  dsc_name   => 'RubyInstaller',
  dsc_ensure => absent,
}
```

And, well? It works! It's idempotent! And, much more interestingly from my perspective, it gives you property-by-property reporting for your DSC resources--it knows what the state of the resource is on your node before it calls the Set method for Invoke-DscResource...

![Puppet run output reading "dsc_sourcelocation changed 'C:\code\temp' to 'C:\Program Files'"]({% link /assets/2020-03-30-dsc-announcement/property-rep.png %})

So it can actually tell you _what changed_ during the run and when.
In other words, DSC resources in this implementation now report **just** like any other Puppet resource.

That's pretty neat!!

What else do you get?
Intellisense and some other awesome magic!
Thanks to the [VSCode extension][extension] maintained by [James Pogran][james] and [Glenn Sarti][glenn]—in this screenshot, the editor is aware of all the parameters you might select, what their type is, and the valid values!

![Image displaying intellisense capabilities of the VSCode extension where it is predicting which parameters to use and displaying their help information inline in the editor.]({% link /assets/2020-03-30-dsc-announcement/intellisense.jfif %})

> **Aside:**
> You _are_ writing your Puppet code in VSCode with the [Puppet extension][extension] installed, aren't you?
> You're taking advantage of the [intellisense][intellisense], [code navigation][codenav], [auto linting][linting], [debugging][debugging], and the [PDK][pdk-vscode], [Bolt][bolt], & [Control Repo][control-repo] integrations... right??

## So It Works. What Next?

We still have some testing and a host of improvements to make (including probably swapping our template engine out, shout out to [Fred Weinmann][fred] for the [templating engine][templating] in the [PSModuleDevelopment][psmd] module), but the next big step—and likely the last I'll be involved with before my paternity leave hits—is [turning this build script into a PowerShell module and adding testing to it][phase2].
It _works_ as a build script, but it can definitely be improved.
And, okay, a module on the Gallery is great and all...

But the **really cool** end-user magic will arrive in the [third phase][phase3], where we hope to be able to automatically build and publish Puppet modules that 1:1 wrap PowerShell modules with DSC resources and expose them as Puppet types and providers!

We're envisioning a future where not only can you Puppetize any DSC-Resource-having-module you want for yourself, but you can just find all of the modules publicly available on the Gallery already wrapped up and ready for you on the Puppet Forge!

## Caveats and Warnings

We're _just_ wrapping the underlying DSC resources and making them available to you.
If there's a problem _calling_ the DSC resources from Puppet, we'll work on it, but if there's a problem with _how_ those resources behave, that's upstream.

Our team is full of lovely humans who do incredible amounts of work (seven people for [>250 PRs/month, ~50 supported modules][dashboard], [over a dozen open source tools][tools], contributing to dozens more) but we can't adopt > 300 DSC modules too. 💔

We'll also continue to improve the underlying provider and build system, of course, and are excited to get the output modules fully functional for PowerShell 7+ - meaning they'll be cross-platform compatible if the underlying resources are!
This first prototype is just 5.1 though.

## Wrapping Up, Call to Action

So! If you're interested in the work so far, you can [check it out on GitHub][repo]--
the [latest PR][pr] includes functional instructions for testing the new builder or just [grabbing the test module][test-module] and playing with it in your own lab!

We wanna tighten the loop and ensure we're solving your problems with this rework because the _whole point_ is to make your lives easier if you're using Puppet and DSC.
We're here to help you get your configuration under control and free you up to do all the other hard work you have on your backlog.

With that in mind, we would love your feedback, so if this tickles your interest at all, please [email us][email] ([dsc@puppet.com][email]) or comment below and let us know:

1. What are the top three PowerShell modules with DSC resources you'd like to see Puppetized?
2. Are you interested in joining our beta test group for this ongoing project?

If you just wanna keep an eye on things, you can follow the repository on GitHub and the [parent epic in JIRA][iac-41]!

Thanks, folx!

[ast-intro]:    https://mikefrobbins.com/2018/09/28/learning-about-the-powershell-abstract-syntax-tree-ast/
[bill]:         https://github.com/RandomNoun7
[bolt]:         https://puppet-vscode.github.io/docs/features/puppet-bolt
[codenav]:      https://puppet-vscode.github.io/docs/features/code-navigation
[control-repo]: https://puppet-vscode.github.io/docs/features/control-repository
[dashboard]:    https://puppetlabs.github.io/community_management/
[david]:        https://github.com/DavidS
[debugging]:    https://puppet-vscode.github.io/docs/features/debugging-puppet-code
[dsc_lite]:     https://forge.puppet.com/puppetlabs/dsc_lite
[dsc-module]:   https://forge.puppet.com/puppetlabs/dsc
[email]:        mailto:dsc@puppet.com
[erick]:        https://github.com/ThoughtCrhyme
[ethan]:        https://github.com/Iristyle
[extension]:    https://puppet-vscode.github.io/
[fred]:         https://github.com/FriedrichWeinmann
[get-docs]:     https://docs.microsoft.com/en-us/powershell/module/psdesiredstateconfiguration/get-dscresource?view=powershell-7
[glenn]:        https://github.com/glennsarti
[helper]:       https://github.com/puppetlabs/PuppetDscBuilder/blob/c5d349f51883abcca926a0dc6be465a037dfe957/Get-DscResourceTypeInformation.ps1
[iac-41]:       https://tickets.puppetlabs.com/browse/IAC-41
[intellisense]: https://puppet-vscode.github.io/docs/features/intellisense
[invoke-docs]:  https://docs.microsoft.com/en-us/powershell/module/psdesiredstateconfiguration/invoke-dscresource?view=powershell-7
[james]:        https://github.com/jpogran
[linting]:      https://puppet-vscode.github.io/docs/features/linting
[manager]:      https://github.com/puppetlabs/ruby-pwsh/blob/master/DESIGN.md
[msutter]:      https://github.com/msutter
[pdk-vscode]:   https://puppet-vscode.github.io/docs/features/puppet-development-kit
[pdk]:          https://puppet.com/docs/pdk/1.x/pdk.html
[phase2]:       https://tickets.puppetlabs.com/browse/IAC-648
[phase3]:       https://tickets.puppetlabs.com/browse/IAC-649
[podcast]:      https://player.fm/series/powerscripting-podcast/episode-334-powerscripting-podcast-glenn-sarti-michael-lombardi
[pr]:           https://github.com/puppetlabs/PuppetDscBuilder/pull/1
[prototype]:    https://github.com/jpogran/PuppetDscBuilder
[psget]:        https://www.powershellgallery.com/packages/PowerShellGet/2.2.3
[psmd]:         https://github.com/PowershellFrameworkCollective/PSModuleDevelopment
[repo]:         https://github.com/puppetlabs/PuppetDscBuilder
[resource_api]: https://puppet.com/docs/puppet/latest/about_the_resource_api.html
[rob]:          https://github.com/ferventcoder
[ruby-pwsh]:    https://github.com/puppetlabs/ruby-pwsh/
[templating]:   https://psframework.org/documentation/documents/psmoduledevelopment/templates.html
[test-module]:  https://github.com/puppetlabs/PuppetDscBuilder/files/4395886/michaeltlombardi-powershellget-0.1.0.tar.gz
[tools]:        https://puppetlabs.github.io/iac/tools/
