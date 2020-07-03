---
layout: post
title: "Apache MOD Test Maintenance"
author: sanfrancrisko
categories:
  - news
tags:
  - apache
  - rspec
  - MODs
  - testing
---
This week sees version `v5.5.0` of the [puppetlabs-apache][puppetlabs-apache-forge] module released.
There are a lot of new features within this release - check out the [CHANGELOG entry for this version][apache-5-5-0-changelog] to see what's included.

The last release of this module was `v5.4.0` on `2020-01-23`, over 5 months ago.
For those unaware of what the IAC Team handle, you can see on our site what [modules]({% link modules.html %}) and [tools]({% link tools.html %}) we are responsible for.
It is fair to say that for a small team, there is plenty to manage, so we are always trying to improve our processes to ensure we're maximising our time.
Still, the gap in time between the release of `v5.4.0` and `v5.5.0` of the [puppetlabs-apache][puppetlabs-apache-forge] module was a concern for us.
What happened and how did we address this issue?

## Why the delay?
There was no shortage of excellent community contributions to the [puppetlabs-apache][puppetlabs-apache-github] module in the period between these two releases.
The team were keen to get a new release of the module out sooner than this, so the community could take advantage of these contributions.
Part of the process of releasing a module involves us running our release check suite on our internal VM infrastructure.
We were finding that there were cases where tests for [Apache MODs][apache-mod] were failing on certain platforms after someone in the community put forward a fix.


## What was the issue?
There are multiple reasons we ended up in this scenario, which ultimately had the same root cause, namely, a lack of test coverage.
Some examples are:
- New platforms changing MOD package names (e.g. [farebers's][farebers] fix in [#2021][pr-2021])
- [Fixes for one environment][pr-1913] having a knock-on effect for a [different environment][pr-2041] (thanks to [h-haaks][h-haaks] for the fix!)

When a new version of an OS comes out, it is quite common for issues to manifest when trying to configure some of the less mainstream [Apache MODs][apache-mod]:
- A simple change in it's package name (_thankfully a relatively quick fix!_)
- The package is no longer available from the core "out-of-the-box" repositories (e.g. a 3rd party repos or edge/experimental/extra package streams need to be configured)
- Package dependencies are unavailable in non-standard repositories
- Support is dropped altogether - there is no way to locate the package or dependencies for a newer OS version

This led us to a conversation about how we continue to support all the various prerequisites and configurations required when presented with a matrix of [Apache MODs][apache-mod] and [compatible OSs][compatible-platforms].
We could, if time permitted, ensure that we have the steps to install every version...of every MOD...on every OS...documented and implemented.

Time permitting...

## Solution
### Test Support Policy
Straight away, we realised that, in the future, we need to strictly time box the amount of time we spend attempting to configure the OS with the correct repositories and/or dependencies for any given MOD.
A rule of thumb was that if it's not available in the default repositories of the OS, or a common, well supported auxiliary repository (e.g. EPEL), then we are not going to pin down the very unique snowflake configuration required for that MOD.
There is always the concept of [default MODs][default-mods-pp] in Apache and these will [remain supported][default-mods-spec] with the module, however, in future, we are going to evaluate how we proceed with a test failure with a much stricter time limit.

### MODs aren't supported anymore!?
Absolutely not! They are still supported! If you want to add support for a new MOD, we do ask that you also write an acceptance test too.
The IAC Team are always happy to help you with this process.

### I can't get the test to pass on all platforms!
Yes - this is likely an issue you're going to run in to.
Kudos to those who chase down ALL the package, package dependencies and configurations required for ALL of the [compatible platforms][compatible-platforms] of the Apache module.
Realistically, you will likely encounter a few OSs where it is beyond reasonable to try and get this MOD working.
In these scenarios, we'll start a conversation on the PR about what the acceptable minimum is for the change being proposed - there's no hard/fast rule here.

### We've agreed we're not supporting this MOD on this OS version - what now?
You may be familiar with [RSpec's conditional filtering][rspec-conditional-filtering]?
If not, [here is an example][rspec-filtering-example]:
```ruby
describe 'apache::mod::ldap', unless: os[:family] == 'redhat' && os[:release].to_i >= 8 do
```
This will mean that this test will **not** run if the OS family is `RedHat` and the version is `8` or higher.
These work well, but, things can start to get messy when there is quite a narrow band of compatible OSs for a MOD.
Consider [`v2.4.3` of `mod_auth_openidc`][mod_auth_openidc_2_4_3] - we can see from the build artifacts' names that we "officially" have support for:
- Ubuntu 16.04
- Ubuntu 18.04
- Debian 10
- RHEL 7

This does not consider the fact that there are many other OSs derived from RHEL and other distro vendors / maintainers can port packages to their OS.
For example, after a bit more digging, I can see that the `mod_auth_openidc` package is available for the following OSs too:
- CentOS 7
- CentOS 8 (via AppStream)
- RHEL 8 (via AppStream)
- Fedora 30
- Fedora 31
- Fedora 32

This search was not exhaustive, and to make it so would require a lot more effort, which is part of the issue we find ourselves up against.
Still, we now have a list of platforms that we want to include/exclude from being tested - depending on how we look at it.
I'm sure you can envisage that the filtering rule for this test is going to become pretty gnarly?
What if I were to also throw in some of the challenges the IAC team face, on top:
- Expanding test coverage uncovering more MOD / OS incompatibility
- Some tests invoking a MOD load/configure indirectly whist testing other functionality
- New OS support requirements

### Tagging and Helper Methods
We had to come up with some better solution than ridiculously complex filtering rules.
After some conversations and design reviews, we settled on an idea of using [YARD's note tags][yard-note-tag].
This gives us the benefit of:
- Keeping within the conventions already in use
- Easy syntax to understand
- Free documentation whilst we're at it

All the class definitions for [Apache MODs][apache-mod] live under [`manifest/mod`][manifest/mod].
This seemed like the most logical place for our tags to live.
Next, we wanted to decide whether this was an "opt-in" or "opt-out" affair.
In the end, we determined that it would be best to "opt-out" and so, the tag became `Unsupported platforms`.
You can now define what platforms a given MOD will _not_ be expected to run on:
```ruby
# @note Unsupported platforms: RedHat: 5, 6; Ubuntu: 14.04; SLES: all; Scientific: 11 SP1
class apache::mod::actions {
    apache::mod { 'actions': }
}
```
For a full overview of the tag syntax rules, see [this section of the README][tag-rules] in the module.

When RSpec tests are kicked off in the module, we will parse the `Unsupported platform` tags under [`manifest/mod`][manifest/mod] as part of the `Rspec.before` hooks and generate a mapping of MOD -> Unsupported Platforms.
Now, from within the tests, you can make use of the `mod_supported_on_platform` helper method to determine whether the test should run on a given platform or be filtered out:
```ruby
describe 'auth_oidc', if: mod_supported_on_platform('apache::mod::auth_openidc') do
```

Hopefully you'll agree that this is a much cleaner solution that a complex filtering rule?
For the IAC Team, it makes our life a lot easier, and hopefully means more frequent updates released for the Apache module for the community.

#### Want more details?
You can see the implementation on [#2036][pr-2036], which has a detailed description outlining the functionality.
JIRA tickets [IAC-801][iac-801] and [IAC-824][iac-824] outline the design and implementation, respectively, should you wish to take a look.


[puppetlabs-apache-forge]:      https://forge.puppet.com/puppetlabs/apache
[puppetlabs-apache-github]:     https://github.com/puppetlabs/puppetlabs-apache
[apache-5-5-0-changelog]:       https://forge.puppet.com/puppetlabs/apache/changelog#v550-2020-07-01
[apache-mod]:                   https://httpd.apache.org/docs/2.4/mod
[MODULES-10712]:                https://tickets.puppetlabs.com/browse/MODULES-10712          
[pr-2041]:                      https://github.com/puppetlabs/puppetlabs-apache/pull/2041
[h-haaks]:                      https://github.com/h-haaks
[pr-2021]:                      https://github.com/puppetlabs/puppetlabs-apache/pull/2021
[farebers]:                     https://github.com/farebers
[pr-1913]:                      https://github.com/puppetlabs/puppetlabs-apache/pull/1913
[compatible-platforms]:         https://forge.puppet.com/puppetlabs/apache/compatibility
[default-mods-pp]:              https://github.com/puppetlabs/puppetlabs-apache/blob/master/manifests/default_mods.pp
[default-mods-spec]:            https://github.com/puppetlabs/puppetlabs-apache/blob/master/spec/acceptance/default_mods_spec.rb
[rspec-conditional-filtering]:  https://relishapp.com/rspec/rspec-core/v/3-8/docs/filtering/conditional-filters
[rspec-filtering-example]:      https://github.com/puppetlabs/puppetlabs-apache/blob/51ce2adcfc231c6a78dda5cc59c2aaf4028bb5bd/spec/acceptance/mod_ldap_spec.rb#L4
[mod_auth_openidc_2_4_3]:       https://github.com/zmartzone/mod_auth_openidc/releases/tag/v2.4.3
[yard-note-tag]:                https://www.rubydoc.info/gems/yard/file/docs/Tags.md#note
[manifest/mod]:                 https://github.com/puppetlabs/puppetlabs-apache/tree/983b1fd3ff178d46145f4b8c0a88bae36dfad12b/manifests/mod
[tag-rules]:                    TODO
[pr-2036]:                      https://github.com/puppetlabs/puppetlabs-apache/pull/2036
[iac-801]:                      https://tickets.puppetlabs.com/browse/IAC-801
[iac-824]:                      https://tickets.puppetlabs.com/browse/IAC-824
