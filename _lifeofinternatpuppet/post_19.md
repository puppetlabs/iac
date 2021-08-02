---
layout: page
title: Week 19
author: Disha-maker
categories:
  - team
  - basics
tags:
  - week 19
---

Hi everyone,

What a busy week?

Some of the key highlights from this week included:-

- Paired up with Danny, Daiana and Adrian on the triage day Monday to do a review on [Docker](https://github.com/puppetlabs/puppetlabs-docker) and [Kubernetes](https://github.com/puppetlabs/puppetlabs-kubernetes) issues.

- When doing the release prep for the puppetlabs-vcsrepo (v3.2.0), the tests were failing on Travis. I re-run the acceptance tests locally and they passed.

More details in these PRs:-
1. [Closed PR](https://github.com/puppetlabs/puppetlabs-vcsrepo/pull/486)
2. [New and Merged PR](https://github.com/puppetlabs/puppetlabs-vcsrepo/pull/487)

Also, the wrong version was tagged, so was told by Paula to remove the tag so that re-tagging can be done again by her.

After getting this release prep [PR](https://github.com/puppetlabs/puppetlabs-vcsrepo/pull/487) merged, I worked on [mergeback PR](https://github.com/puppetlabs/puppetlabs-vcsrepo/pull/488) test failures by running the tests locally for debian-8, 9 and 10. The tests passed successfully. Also, an uncategorized PR paragraph was removed from the CHANGELOG.md file. Click on the mergeback PR link for more details.

The release prep PRs for the following modules were ready for review and the mergeback PRs were merged, more details below:-
- [puppetlabs-exec](https://github.com/puppetlabs/puppetlabs-exec/pull/149)
- [puppetlabs-facter_task](https://github.com/puppetlabs/puppetlabs-facter_task/pull/148)
- [puppetlabs-reboot](https://github.com/puppetlabs/puppetlabs-reboot/pull/272)
- [puppetlabs-vcsrepo](https://forge.puppet.com/modules/puppetlabs/vcsrepo)
- The release prep PR (v3.2.0) for the [puppetlabs-satellite_pe_tools](https://github.com/puppetlabs/puppetlabs-satellite_pe_tools/pull/146) was submitted for review from the team.


Links to Mergeback PRs
- [puppetlabs-reboot](https://github.com/puppetlabs/puppetlabs-reboot/pull/273)
- [puppetlabs-vcsrepo](https://github.com/puppetlabs/puppetlabs-vcsrepo/pull/488)
The mergeback PRs for the puppetlabs-exec and puppetlabs-facter_task modules were merged too.

The confluence page on 'Releasing an IAC supported module' was also updated based on the feedback received from Sheena and Ciaran.

I continued to work on my community reporting ticket, Exclude drafts from module report.
I also learnt how to indent code using rubocop. Thanks for the session Daiana!

Finally, I raised a [PR](https://github.com/puppetlabs/iac/pull/181) to fix broken hyperlinks on the 'Life of an Intern at Puppet' blog home page

That's all for this week!