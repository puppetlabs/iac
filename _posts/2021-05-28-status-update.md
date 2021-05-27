---
layout: post
title: "2021-05-28: IAC & DevX Team Status Update"
author: carabasdaniel
categories:
  - team
  - status
  - developer
tags:
---

We had a bit of a slow week today. We have a few company-wide mental health holidays and one was this week. It's really good to disconnect from it all sometimes. 

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-mysql#1387`][puppetlabs-mysql-pr-1387]: "Update xtrabackup package name for Ubuntu 20.04", thanks to [rsynnest][rsynnest]
- [`iac#252`][iac-pr-252]: "Bump nokogiri from 1.11.0 to 1.11.5", thanks to [dependabot][dependabot]

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-docker`][puppetlabs-docker] (`4.0.1`)
- [`puppetlabs-apache`][puppetlabs-apache] (`6.2.0`)
- [`puppetlabs-postgresql`][puppetlabs-postgresql] (`7.2.0`)
- [`puppetlabs-haproxy`][puppetlabs-haproxy] (`6.0.1`)
- [`puppetlabs-tomcat`][puppetlabs-tomcat] (`5.1.0`)
- [`puppetlabs-vsphere`][puppetlabs-vsphere] (`2.0.0`)

  [puppetlabs-docker]: https://github.com/puppetlabs/puppetlabs-docker
  [puppetlabs-apache]: https://github.com/puppetlabs/puppetlabs-apache
  [puppetlabs-postgresql]: https://github.com/puppetlabs/puppetlabs-postgresql
  [puppetlabs-haproxy]: https://github.com/puppetlabs/puppetlabs-haproxy
  [puppetlabs-tomcat]: https://github.com/puppetlabs/puppetlabs-tomcat
  [puppetlabs-vsphere]: https://github.com/puppetlabs/puppetlabs-vsphere
  [puppetlabs-mysql-pr-1387]: https://github.com/puppetlabs/puppetlabs-mysql/pull/1387
  [rsynnest]: https://github.com/rsynnest
  [iac-pr-252]: https://github.com/puppetlabs/iac/pull/252
  [dependabot]: https://github.com/apps/dependabot


### Puppet Content Templates LA Release

You may have seen the PDK user experience survey that went around some weeks ago. We wanted to gain your feedback to validate some assumptions we had about creating content for Puppet products.  One of the hypothesis that we started with was a prediction that the monolithic [pdk-templates][pdk-templates] repository was too complex and inflexible for end users.

The [results][pdk-results] of the survey bore this out, and so we started work on a new approach to content templating.

Instead of a single repository which you'd need to fork and maintain to keep up to date, we built out a modular system that would allow you pick and choose the components you'd like to include.

We're happy to report that we are making great progress and will have a limited availability release out very soon for you to experiment with, so watch this space for updates!

[pdk-templates]: https://github.com/puppetlabs/pdk-templates
[pdk-results]: https://docs.google.com/document/d/19LzpixC694nOklW6-IqwcGBzlwR6v56M-sMsdSS14Ss/edit#


### DSC And the PDK Go Prototype

The [new PDK approach][pdkgo-templating] that the DevX team is working on is implemented in Go and screamingly fast. Since their LA release is imminent, this week felt like a good time to see what it will be like to use the new templating in a real project.

We put up a [prototype PR][puppet-dsc-pdkgo-template] for switching to the new templating (when it becomes available) in our [`Puppet.Dsc`][puppet-dsc-intro-blog] module.

How well did it work?

Well, it decreased the time to scaffold a minimal Puppet module from thirty seconds to **less than one second**.

It's hard to overstate what a massive improvement this is!
In our [next milestone][puppet-dsc-autopublish] for `Puppet.Dsc` (after the current milestone, which will see us release `1.0.0` to the [PowerShell Gallery][puppet-dsc-gallery]!), we'll be setting up automation to do a few things:

1. Automatically publish any new release of a PowerShell module with DSC Resources on the gallery - either a new version or a new module - within 24 hours of release, straight to the [Forge][puppet-dsc-forge].
2. Automatically rebuild and publish the incremented build of _all_ previously puppetized PowerShell modules with DSC Resources to the Forge.
It's that second use case, the rebuilding, that makes this change in templating extremely effective:
There are over `350` PowerShell modules with DSC Resources on the Gallery right now.
Even if we only rebuilt the latest version of those modules, we would be saving almost _three hours_ of build time.

But when we make updates to the core builder or pwshlib library, we're actually rebuilding older module versions, which means even if we are extremely conservative with our estimations and pretend the PowerShell modules only average 5 releases each, we're going to shave a _frankly astounding_ **875 hours** from our build time!

The real time to rebuild and publish is, of course, shorter because we will be running this all in parallel; but saving more than a literal month's worth of build time on every release of `Puppet.Dsc` is an overwhelming win for us (and for the folks who maintain the Github Actions infrastructure)!

[pdkgo-templating]: https://github.com/puppetlabs/pdkgo
[puppet-dsc-autopublish]: https://github.com/puppetlabs/Puppet.Dsc/milestone/2
[puppet-dsc-forge]: https://forge.puppet.com/modules/dsc
[puppet-dsc-gallery]: https://www.powershellgallery.com/packages/Puppet.Dsc/0.5.0
[puppet-dsc-intro-blog]: https://puppetlabs.github.io/iac/news/roadmap/2020/09/21/dsc-release.html
[puppet-dsc-pdkgo-template]: https://github.com/puppetlabs/Puppet.Dsc/pull/154
[puppet-dsc-stable]: https://github.com/puppetlabs/Puppet.Dsc/milestone/1


### Kubernetes certification updates

We're one step closer to finishing the certification for our [`puppetlabs/kubernetes`][k8s] module for Kubernetes 1.20.
We've now got an automated [complete k8s stack][kream] using CloudFormation and coming down to the finish line with Sonobuoy conformance testing!

[k8s]: https://forge.puppet.com/modules/puppetlabs/kubernetes
[kream]: https://github.com/puppetlabs/kream/blob/master/cloud/aws/kream_template.json


### Cloud CI Update

This week we have finally closed the training and education milestone.
We will continue now with the Puppet Developer Experience improvement milestone for Cloud CI and we have already started the P.o.C (Proof of Concept) for developer box provisioning.
This allows a module developer to request an instance representative of the team's testing environments using just a GitHub token.

This is kind of a big deal, because many developer environments used for validatiting Puppet modules can be pretty complex--think of a Splunk architecture with forwarders, indexers, search heads, etc.
We will continue the work in close cooperation with our security team to make this a secure and useful solution for Puppet module developers. 
