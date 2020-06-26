---
layout: post
title: "26th June 2020: IAC Team Status Update"
author: dev_el_ops
categories:
  - team
  - status
tags:
  - releases
  - community_management
  - design
  - centos8
  - ruby27
  - bolt
  - shoutouts
---

The IAC team has been working on a lot of things over the past week.
We want to share with our community some of the most interesting things.
Here’s a brief overview of what we’ve been up to:

## Module Releases from IAC Team

To avoid the various infrastructure issues that have been plaguing our release verification, we've switched to manual test runs and have managed to release the following modules:
- [puppetlabs/postgresql](https://github.com/puppetlabs/puppetlabs-postgresql) (6.6.0)
- [puppetlabs/mysql](https://github.com/puppetlabs/puppetlabs-mysql) (10.6.0)
- [puppetlabs/package](https://github.com/puppetlabs/puppetlabs-package) (1.2.0)
- [puppetlabs/vsphere](https://github.com/puppetlabs/puppetlabs-vsphere) (1.5.0)

As you might have noticed, in the past weeks we have been having trouble with our Github Actions CI setup for our usual in-depth testing and releases.
Due to this issue we currently do the release checks manually until we have a stable solution.
This was one of the reasons you might have seen a drop in our release schedule.
We're already working on a improved fix which we hope to be able to share soon.
As always we want to thank the community for their support and understanding and we hope to see you continuing your contributions.

## Community Reports Updated

The [community reports](https://puppetlabs.github.io/community_management/) are used by us to handle responding to all your fabulous contributions to the 82 repos we're responsible for.
As part of her thesis, [Diana](https://github.com/daianamezdrea/) added a number of new reports and filters to these pages, and also has done a complete overhaul of the design.
The reporting changes are already deployed, and the design changes will follow after her final exams at the start of next week.
Please join us in wishing her all the best for the exams.
We know you'll crush it, Diana!

To give you something to feast your eyes on until we get it merged and deployed, here some screenshots of what's to come:

![bar chart of commented and merged PRs over time]({% link /assets/2020-06-26-status-update/pr-work-done.png %})

![line chart of PRs created by day by community members and puppet employees]({% link /assets/2020-06-26-status-update/prs-created.png %})

## CentOS 8 testing

[David Swan](https://github.com/david22swan) added PR-testing for CentOS 8 on all our linux modules.
Since we support RHEL 8 and friends since a while, we realised we need to add some PR-time testing so that we don't accidentally merge regresssions.

## Ruby 2.7

We've rolled out [Ruby 2.7 compatibility and testing](https://tickets.puppetlabs.com/browse/IAC-857) for all our tools over the last weeks.
This includes new `-r2.7` versions of the [puppet-module-gems](https://github.com/puppetlabs/puppet-module-gems), as well as sundry fixes across the repos.
The most common issue that needs addressing is disambiguating passing hashes vs keyword arguments, which [ruby 2.7 is getting picky about](https://rubyreferences.github.io/rubychanges/2.7.html#keyword-argument-related-changes).

## Updating Bolt

Thanks to the Bolt for fixing [an issue](https://github.com/puppetlabs/bolt/issues/1846) that was impacting litmus use.
[Sheena](https://github.com/sheenaajay) [successfully updated](https://tickets.puppetlabs.com/browse/IAC-897) all our test suites to the most recent release of bolt.

## Community Shoutouts

Special thanks to the following community folks:

- [ekohl](https://github.com/ekohl) chipped in quite a bit of work on a number of [puppetlabs-apache](https://github.com/puppetlabs/puppetlabs-apache) PRs: [#2043](https://github.com/puppetlabs/puppetlabs-apache/pull/2043), [#2042](https://github.com/puppetlabs/puppetlabs-apache/pull/2042), [#2041](https://github.com/puppetlabs/puppetlabs-apache/pull/2041).
- [fhrbek](https://github.com/fhrbek) posted a new feature for windows at [puppetlabs-package#200](https://github.com/puppetlabs/puppetlabs-package/pull/200).

Thanks to everyone who's helping out on github and on slack, making this the wonderful community we love!

## Wrap-up

That’s it for this weeks update, a big THANK YOU for all your contributions and support.
