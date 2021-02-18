---
layout: post
title: "2021-02-19: IAC Team Status Update"
author: carabasdaniel
categories:
  - team
  - status
tags:
  - community
  - releases
  - cloud-ci
  - litmus
  - PDKSync
  - pdk-templates
  - pdk
---

## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:

- [`puppetlabs-apache#2122`][puppetlabs-apache-pr-2122]: "(IAC-1186) Add $use_port_for_filenames parameter", thanks to [smortex][smortex]
- [`puppetlabs-apache#2120`][puppetlabs-apache-pr-2120]: "(MAINT) Use shared examples for facts + other spec cleanups", thanks to [ekohl][ekohl]
- [`puppetlabs-java#461`][puppetlabs-java-pr-461]: "(MODULES-10935) - Switch legacy operatingsystem fact to modern kernel one", thanks to [rjd1][rjd1]
- [`puppetlabs-kubernetes#473`][puppetlabs-kubernetes-pr-473]: "Fix calico CNI support", thanks to [djschaap][djschaap]
- [`puppetlabs-mysql#1363`][puppetlabs-mysql-pr-1363]: "Support compression command and extension", thanks to [dploeger][dploeger]
- [`pdk#941`][pdk-pr-941]: "Allow Facter4 to be co-installed with PDK", thanks to [GabrielNagy][GabrielNagy]
- [`pdk#927`][pdk-pr-927]: "Adds AIX support when creating a new module", thanks to [logicminds][logicminds]
- [`pdk-templates#400`][pdk-templates-pr-400]: "gitlab-ci: unbreak litmus acceptance tests", thanks to [cdenneen][cdenneen]
- [`pdk-templates#399`][pdk-templates-pr-399]: "gitlab-ci: make litmus[variables] optional", thanks to [cdenneen][cdenneen]


The IAC team would like to thank [Edwin Maldonado](https://github.com/mcka1n) from Puppets Solution Architect team, for joining our Community day this week. It was great having Edwin sit in and help out. 

Edwin's first contribution during Community Day to [hiera-eyaml](https://github.com/voxpupuli/hiera-eyaml/pull/313) has already been released. 

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## New Module Releases

The following modules were released this week:

- [`puppetlabs-apt`][puppetlabs-apt] (`7.7.1`)
- [`puppetlabs-apache`][puppetlabs-apache] (`5.10.0`)
- [`puppetlabs-mysql`][puppetlabs-mysql] (`10.10.0`)
- [`puppetlabs-tagmail`][puppetlabs-tagmail] (`3.5.1`)

  [puppetlabs-apt]: https://github.com/puppetlabs/puppetlabs-apt
  [puppetlabs-apache]: https://github.com/puppetlabs/puppetlabs-apache
  [puppetlabs-mysql]: http://github.com/puppetlabs/puppetlabs-mysql
  [puppetlabs-tagmail]: https://github.com/puppetlabs/puppetlabs-tagmail/

## Puppet Litmus and PDKSync

- [puppet_litmus v0.24.0](https://rubygems.org/gems/puppet_litmus/versions/0.24.0) release removes Puppet 5 from matrix_from_metadata setup script

Good news this week! The PDKSync run for all our supported modules:
- Removes Puppet 5 testing based on the new PDK Templates [config_defaults.yml](https://github.com/puppetlabs/pdk-templates/pull/403)
- Added an automated module release preparation workflow that will trigger at the end of each week and prepare a PR for Community Day
- Cleans up provision.yaml files on all modules

Work on Puppet Litmus continues with the update of the matrix_from_metadata_v2 script that will generate a complete matrix of the OSs in the metadata.json file including the possible docker containers we can use. With these changes merged in we will update the pdk-templates nightly and PR test acceptance workflows to maximize acceptance test coverage in the Github Action workflows as this will allow us to easily remove Travis and Appveyor from our PR testing in the near future. 

## Cloud CI

This week work has mainly focused on wrappring up the initial setup for the automated module release preparation workflow that is now part of PDK Templates. Having this feature will definitely ease module releases for everyone in the future.

The work we are currently doing on Puppet Litmus and the PDK Templates will improve our Github Action acceptance tests coverage. For a quick preview on how the acceptance tests will look in the future see the tests we are currently running with both VMs and docker containers [here](https://github.com/puppetlabs/puppetlabs-testing/pull/346/checks)

On the multi-node testing we have begun [work](https://github.com/puppetlabs/puppetlabs-kubernetes/pull/481) on the puppetlabs-kubernetes module, where we are preparing an integration test setup that will use the Cloud CI provisioning mechanism to test puppetlabs-kubernetes module with the associated puppetlabs-helm and puppetlabs-rook modules. 

## PDK


