---
layout: post
title: "2021-04-30: IAC & DevX Team Status Update"
author: jpogran
categories:
  - team
  - status
tags:
  - kubernetes
  - cncf
  - cloud-ci
  - vscode
  - devx
---

## Community Day Triage Stats

New this week is the Developer Experience team joining Community Day to triage new and existing tickets in the tooling repositories.

The teams spring cleaning activities continues with 341 backlog issues being closed.

Next Monday, May 3rd we will have a reduced team covering community day due to Public holidays in our EMEA region.

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-java#473`][puppetlabs-java-pr-473]: "add url parameter for adoptopenjdk", thanks to [cbobinec][cbobinec]
- [`puppetlabs-kubernetes#507`][puppetlabs-kubernetes-pr-507]: "Add kubeadm skip-phases option", thanks to [BaronMsk][BaronMsk]
- [`puppetlabs-kubernetes#500`][puppetlabs-kubernetes-pr-500]: "Configure image registry settings for  containerd when installed via package", thanks to [andeman][andeman]

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## New Module / Gem Releases

The following modules were released this week:

- [`puppetlabs-java`][puppetlabs-java] (`7.0.2`)
- [`puppetlabs-iis`][puppetlabs-iis] (`8.0.1`)

  [puppetlabs-java]: https://github.com/puppetlabs/puppetlabs-java
  [puppetlabs-iis]: https://github.com/puppetlabs/puppetlabs-iis
  [puppetlabs-java-pr-473]: https://github.com/puppetlabs/puppetlabs-java/pull/473
  [cbobinec]: https://github.com/cbobinec
  [puppetlabs-kubernetes-pr-507]: https://github.com/puppetlabs/puppetlabs-kubernetes/pull/507
  [BaronMsk]: https://github.com/BaronMsk
  [puppetlabs-kubernetes-pr-500]: https://github.com/puppetlabs/puppetlabs-kubernetes/pull/500
  [andeman]: https://github.com/andeman

## IAC Content Support Team

This week [Daiana][Daiana] has been working on CNCF certification with Kubernetes 1.2.0, alongside this she has continued to work on additional tickets that have landed on her plate. [Adrian][Adrian] has been working on auditing a new codebase that the team plan on taking ownership of. This will be a gem/module that will help us make the most of analytics and provide us with real feedback. Last but not least [David Swan][David Swan] has been working on porting the last of our modules to run acceptance testing using Github Actions and GCP. As these are the last few they are most definitely more complex to migrate, none the less this is a job well suited to [David][DavidSwan].

## Cloud CI

We are currently working on the training and education material for porting Puppetlabs modules to use the Cloud CI and a blog post about our multi-node testing. Next week we will try to prepare a troubleshooting/debug demo and a walkthrough the simplified module release process we have currently set up.
After the training and education milestone we will start focusing on improving the Puppet Developer Experience when using the Cloud CI. This will allow developers to easily provision dev environments in the cloud and use them in their development process. More news about this feature will follow in the next couple of weeks.

## Developer Experience

The team is heads down on the first set of tasks to improve templates and package size identified from the PDK survey and existing tickets. As part of this work, we're working to increase documentation on how the tool works. [Ciaran][Ciaran] has done some wonderful work describing how the [validation](https://github.com/puppetlabs/pdk/blob/main/reference/validate/REFERENCE.md) system works inside the the PDK.

There is an upcoming Puppet VS Code Extension release with improved Puppet code tokenization implemented by [Glenn]. This enables code folding based on the language, not just the indent level, and improved code formatting speed. Look for the status in this [PR](https://github.com/puppetlabs/puppet-editor-services/pull/302)

  [Adrian]:             https://github.com/adrianiurca
  [Ben]:                https://github.com/binford2k
  [Ciaran]:             https://github.com/sanfrancrisko
  [Daiana]:             https://github.com/daianamezdrea
  [Danny]:              https://github.com/carabasdaniel
  [DavidArmstrong]:     https://github.com/da-ar
  [DavidSchmitt]:       https://github.com/DavidS
  [DavidSwan]:          https://github.com/david22swan
  [Disha]:              https://github.com/Disha-maker
  [Glenn]:              https://github.com/glennsarti
  [James]:              https://github.com/jpogran
  [Lore]:               https://github.com/lionce
  [Michael]:            https://github.com/michaeltlombardi
  [Paula]:              https://github.com/pmcmaw
  [Sheena]:             https://github.com/sheenaajay
  [Supported Modules]:  https://puppetlabs.github.io/iac/modules/
  [Tools]:              https://puppetlabs.github.io/iac/tools/
