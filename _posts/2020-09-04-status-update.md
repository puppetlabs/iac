---
layout: post
title: "4th September 2020: IAC Team Status Update"
author: adrianiurca
categories:
  - team
  - status
tags:
  - releases
  - shoutouts
  - kubernetes
  - welcome
  - team work
---

The IAC team has been active over the past week.
We worked on releasing modules and also reviewing contributions from the community.
Here’s a resume of the most cool things:

## Module Releases from IAC Team

We've had a few modules released this week:

- [puppetlabs/kubernetes](https://github.com/puppetlabs/puppetlabs-kubernetes) (v5.3.0)

## Community Contributions

We'd like to thank the fantastic Puppet Community for the following contributions over the past week:

- [puppetlabs/puppetlabs-kubernetes](https://github.com/puppetlabs/puppetlabs-kubernetes): Thanks to [Jason Whall][jasonwhall] for this [change](https://github.com/puppetlabs/puppetlabs-kubernetes/pull/436) which updates docker yumrepo default .
- [puppetlabs/puppetlabs-accounts](https://github.com/puppetlabs/puppetlabs-accounts): Thanks to [Jarret Lavallee][jarretlavallee] for this [change](https://github.com/puppetlabs/puppetlabs-accounts/pull/333) which allow for Sensitive type passwords in accounts::user .

### DSC User Testing

With the last of the major technical hurdles out of the way, the PowerShell DSC Puppetizer is ready for another wave of user testing.
[Joey Piccola](https://github.com/joeypiccola) reached out to offer some help with testing (thanks, Joey!) and we were quickly able to Puppetize and send over both ActiveDirectoryDsc and xFailOverCluster - putting almost 30 puppetized DSC resources into his hands in mere minutes!
Not only have the build times slimmed dramatically, but the packaged size of these modules is _tiny_, under 150kB each!
If you're interested in participating in our beta testing program, you can reach out to us at [dsc@puppet.com](mailto:dsc@puppet.com)!

### Welcome to the Team

We want to announce to you that [Disha Kareer][dishakareer] is the newest member of the IAC Team.
[Disha][dishakareer] is Undergraduate student studying BSc Computing and Information Technology including Professional Experience.
She enjoys volunteering and meeting new people.
She will help us to fulfill the IAC Team noble mission.

## Wrap-up

That’s it for this weeks update, a big THANK YOU for all your contributions and support.

[jasonwhall]: https://github.com/JasonWhall
[dishakareer]: https://github.com/disha-maker
[jarretlavallee]: https://github.com/jarretlavallee
