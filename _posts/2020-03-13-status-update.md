---
layout: post
title: "13th March 2020: IAC Team Status Update"
author: carabasdaniel
categories:
  - team
  - status
tags:
  - module updates
  - community
  - litmus
  - facter
  - testing
  - pdk
---

The IAC team has been working on a lot of interesting things over the past week.
Here's a brief overview of what we've been up to:

## Updates to Puppet Modules

Over the last week we have released:

- [puppetlabs/apt](https://forge.puppet.com/puppetlabs/apt) (v7.4.1)

## Community

A big thank you goes out to [Glenn Sarti](https://github.com/glennsarti) for the work he has done in removing the PDK dependency from Litmus.
Also we would like to thank [Antoine](https://github.com/anarcat) and [Dirk Heinrichs](https://tickets.puppetlabs.com/secure/ViewProfile.jspa?name=dhs%40recommind.com&selectedTab=com.atlassian.streams.streams-jira-plugin:user-profile-stream-panel) for their help in resolving the file permission issues on the [puppetlabs-apt](https://github.com/puppetlabs/puppetlabs-apt) module.

## Customer Escalations

Over the past week we have closed out two issues on the [puppetlabs-apt](https://github.com/puppetlabs/puppetlabs-apt) module. As a result of these two tickets [MODULES-10548](https://tickets.puppetlabs.com/browse/MODULES-10548) and [MODULES-10583](https://tickets.puppetlabs.com/browse/MODULES-10583) we have decided to remove the file permissions management from the module implementation.

We have also merged a PR that will remove the strftime function from the [puppetlabs-stdlib](https://github.com/puppetlabs/puppetlabs-stdlib) module as this function has been deprecated and superseded by a function withing the Puppet agent, see [IAC-547](https://tickets.puppetlabs.com/browse/IAC-547).

## Litmus Progress

We have release [Litmus version 0.16.0](https://github.com/puppetlabs/puppet_litmus/releases/tag/0.16.0) that contains a couple of nice fixes and removes dependency on PDK - [CHANGELOG](https://github.com/puppetlabs/puppet_litmus/blob/master/CHANGELOG.md)

On [puppetlabs-vsphere](https://github.com/puppetlabs/puppetlabs-vsphere) we have finished the conversion to allow users to run acceptance tests using Litmus in [puppetlabs-vsphere#172](https://github.com/puppetlabs/puppetlabs-vsphere/pull/172). 

Finally the conversion for using Litmus for [puppetlabs-docker](https://github.com/puppetlabs/puppetlabs-docker) acceptance testing is ready to be merged in [puppetlabs-docker#585](https://github.com/puppetlabs/puppetlabs-docker/pull/585).
As a result any future pull request to the docker module will also run the acceptance tests using Github Actions hosted runners on Ubuntu 16.04 and Ubuntu 18.04.
For running acceptance tests on Windows, the provision file of the module contains a item that uses a Windows Vagrant box for testing.
