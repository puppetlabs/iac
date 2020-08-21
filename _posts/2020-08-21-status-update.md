layout: post
title: "21th August 2020: IAC Team Status Update"
author: daiana.mezdrea
categories:
  - team
  - status
tags:
  - releases
  - shoutouts
  - acl
  - accounts
  - puppet-module-gems
  - holiday time
  - team work
---

The IAC team has been working on a lot of things over the past week.
We want to share with our community some of the most interesting things.
Here’s a brief overview of what we’ve been up to:

## Module Releases from IAC Team
We've had a few modules released this week:
- [puppetlabs/acl](https://github.com/puppetlabs/puppetlabs-acl) (v3.2.0)
- [puppetlabs/accounts](https://github.com/puppetlabs/puppetlabs-accounts) (v6.2.0)
- [puppetlabs/pwshlib](https://github.com/puppetlabs/ruby-pwsh) (v0.5.0)

## Team work, dream work
We've noticed that `simplecov` dropped support for Ruby 2.4 from v0.19.0 and in order to solve this problem which was first highlighted [here](https://github.com/puppetlabs/pdk-templates/issues/345), all the team put their resources in one debug session. Step by step, we were able to understand what is happening and shortly after that, [puppet-module-gems](https://github.com/puppetlabs/puppet-module-gems)(v0.5.1) was released.
Thank you [Paula](https://github.com/pmcmaw), [Ciaran](https://github.com/sanfrancisko) and [Dani](https://github.com/carabasdaniel) for the demonstration! 

## Community Contributions
We'd like to thank the fantastic Puppet Community for the following contributions over the past week:

- [puppetlabs/puppetlabs-apache](https://github.com/puppetlabs/puppetlabs-apache): Thanks to [ekohl][ekohl] for this [fix](https://github.com/puppetlabs/puppetlabs-apache/pull/2060) which ensures that the bool2httpd function is compatible in Ruby 2.7.
- [puppetlabs/puppet-strings](https://github.com/puppetlabs/puppet-strings): [ekohl][ekohl] also provided this [fix](https://github.com/puppetlabs/puppet-strings/pull/246) to ensure that we handle missing descriptions more gracefully in puppet-strings, thanks again [ekohl][ekohl]!
- [puppetlabs/action-litmus-spec](https://github.com/puppetlabs/action-litmus_spec): This update to the README should hopefully make things a bit clearer for anyone else wishing to leverage the action-litmus-spec Github Action, thanks for the [fix](https://github.com/puppetlabs/action-litmus_spec/pull/38) [choffee][choffee]!
- [puppetlabs/pdk-docker](https://github.com/puppetlabs/pdk-docker): Thank you [alanraison][alanraison] for the [fix](https://github.com/puppetlabs/pdk-docker/pull/10) to pdk-docker which ensures openssh is now installed during container initialisation.

A BIG applause for this week and the community:
[ekohl]:                      https://github.com/ekohl
[choffee]:                    https://github.com/choffee
[alanraison]:                 https://github.com/alanraison

## DSC Builder Nearing Testing

Lots of small issues have been closed out recently for the DSC work - paths and non enum values are now case-insensitive, DscRunAsCredential now works as expected, and the base provider lives in the `pwshlib` (check the latest release) meaning you don't have to rebuild your modules every time the base provider gets updated or improved!

The tickets closed out this week represent the last technical implementation blockers for this phase of the project, everything else is documentation, testing, and user feedback! We're nearing a launch of the PowerShell module to the [public Gallery](https://powershellgallery.com)!

## Time for holiday
As no summer can't end without a holiday, our team members Daiana and Dani will have a short PTO for recharging their batteries and prepare for a new season of fixing bugs! 

## Wrap-up
That’s it for this weeks update, a big THANK YOU for all your contributions and support.
