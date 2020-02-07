---
layout: post
title: "7th Feb 2020: IAC Team Status Update"
author: criskoduck
categories:
  - team
  - status
tags:
  - module updates
  - kubernetes
  - tooling
  - personal
  - github
  - dashboards
  - honeycomb
  - metrics
---

The IAC team have been working on a lot of interesting things these past two weeks. Here's a brief overview of what we've been up to:

## Team Blog
If you're here, you're already aware of it - the IAC team will now be giving status updates as to what we've been working on, any insights we've made and cool new tech we've been playing with. We're also hoping to share more of the tools that we use internally with the community.

## Updates to Puppet Modules
We've released a number of new modules as part of our Content Triage Process.
Check out the CHANGELOG in each of the modules for more details as to what has been added:
- [puppetlabs/accounts](https://forge.puppet.com/puppetlabs/accounts) (v6.1.0)
- [puppetlabs/apache](https://forge.puppet.com/puppetlabs/apache) (v5.4.0)
- [puppetlabs/java](https://forge.puppet.com/puppetlabs/java) (v6.1.0)
- [puppetlabs/kubernetes](https://forge.puppet.com/puppetlabs/kubernetes) (v5.1.0)
- [puppetlabs/puppet_agent](https://forge.puppet.com/puppetlabs/puppet_agent) (v3.0.0)
- [puppetlabs/puppet_agent](https://forge.puppet.com/puppetlabs/puppet_agent) (v3.0.1)
- [puppetlabs/reboot](https://forge.puppet.com/puppetlabs/reboot) (v2.4.0)
- [puppetlabs/websphere_application_server](https://forge.puppet.com/puppetlabs/websphere_application_server) (v2.0.1)

## Kubernetes v5.1.0
The [CNCF](https://www.cncf.io/) have certified the latest version (v5.1.0) of the [puppetlabs/kubernetes](https://forge.puppet.com/puppetlabs/kubernetes) module with [Kubernetes](https://kubernetes.io/) v1.16.6.
Check out the [module on The Forge](https://forge.puppet.com/puppetlabs/kubernetes) to see how to bootstrap K8 clusters and save yourself time and effort.
You may also be interested in Kubetool (bundled with the module and as a [Docker image](https://hub.docker.com/r/puppet/kubetool)) which auto-generates the Hiera security parameters, the discovery token hash, and other configurations for your Kubernetes cluster.

## There's a buzz about Honeycomb.io
We're very excited to be in the POC stage rolling out [Honeycomb](https://www.honeycomb.io/) to collect data from our CI / Test infrastructure.
This is going to give us much more visibility in to a number of important metrics and allow us to make the test process for modules a lot slicker.

![Execution time of pdksync run on AppVeyor & Travis](/iac/assets/2020-02-07-status-update/honeycomb_travis_appveyor.png)
**Execution Time of PDK Sync run on Travis and AppVeyor CI platforms**

We were very excited to be working with this very cool solution and we're already starting to get some interesting insights.
A more in depth blog post about this in the near future - don't fly too far away!

## Module Statistics Dashboards
A vital part of the Content Triage Process is visibility in to the status of the modules:
- How many PRs are open?
- What is the status of the last `N` test results?
- When was the last comment from a contributor?

There are a lot of modules on [The Forge](https://forge.puppet.com/supported/), so we need a way to quickly view all this data.
We have made some great improvements to our [Community Management](https://puppetlabs.github.io/community_management/) dashboards recently:
- More accurate reporting on module metrics
- Integration with [Github Actions](https://github.com/features/actions) reports / artifact to provide quicker feedback of the results from our release checks and our future nightly CI runs