---
layout: post
title: "24th April 2020: IAC Team Status Update"
author: carabasdaniel
categories:
  - team
  - status
tags:
  - module updates
  - community
  - litmus
  - testing
  - dsc
  - pdk
  - powershell
  - windows
---

The IAC team has been working on a couple of interesting things in the past week.
Here's a brief overview of what we've been up to:

## Adrian's first week of triage

[Adrian Iurca][adrian] has joined the IA Content Team recently and this has been the first pass through the Module Triage process. Here's a short description of how this played out in his own words:

* This was a good challenge for me and a good opportunity to learn more about Puppet modules. Working with the community is also a cool thing. Looking forward to help people and improve the modules used by community. *

## Module approvals and deprecations

In the past week both the [puppetlabs-azure](https://github.com/puppetlabs/puppetlabs-azure) and [puppetlabs-azure_arm](https://github.com/puppetlabs/puppetlabs-azure_arm) have been deprecated. 

Also the [puppet-keepalived](https://github.com/voxpupuli/puppet-keepalived) module has been approved.

## Module Releases

One thing we are always happy to talk about is the release of a module, in this case:

- [pupptelabs/docker](https://forge.puppet.com/puppetlabs/docker) (v3.10.0)

## Continued Work on Puppet DSC

The work done by the team to [refactor DSC support][iac-41] in Puppet has continued with strides being made every day. To any community members who would like to be part of our beta testing program, I encourage you to reach out to [dsc@puppet.com](mailto:dsc@puppet.com) with answers to the following questions:

- What are the top three PowerShell modules with DSC resources you use/depend on the most?
- Are you interested in participating in our beta testing program?

## Community Contributions

When we talk of community it's not just the issues that they have raised, but also the contributions that they have made, so here's a few of the excellent PRs opened by community members that have been merged in over the last week:

[Finish conversion of `postgresql_password` function](https://github.com/puppetlabs/puppetlabs-postgresql/pull/1161)
[Finish conversion of `postgresql_escape` function](https://github.com/puppetlabs/puppetlabs-postgresql/pull/1162)
[Finish conversion of `postgresql_acls_to_resources_hash` function](https://github.com/puppetlabs/puppetlabs-postgresql/pull/1163)
[(MODULES-8543) Remove nftables' backend warning from iptables_save output](https://github.com/puppetlabs/puppetlabs-firewall/pull/911)

We would like to thank both [alexjfisher][alexjfisher] and [NITEMAN][NITEMAN] for these contributions and hope to see more from them both in the future.

## PDK

Currently [PDK][PDK] has shifted sterwardship towards the IA Content Team. More information about this will be comming in the following weeks.

## Litmus

The final thing that I wish to talk about today is the work finalising our adoption of Litmus as a test environment throughout our modules:

- [puppetlabs/reboot](https://github.com/puppetlabs/puppetlabs-reboot/pull/235) - porting finished, thanks to [Ciaran McCrisken][ciaran]
- [puppetlabs/satellite_pe_tools](https://github.com/puppetlabs/puppetlabs-satellite_pe_tools/pull/129) - porting finished, thanks to [David Swan][davidswan]
- [puppetlabs/ibm_installation_manager](https://github.com/puppetlabs/puppetlabs-ibm_installation_manager) - The last module that still needs conversion to use Puppet Litmus. 

## Wrap-up

That's it for this weeks update, a big THANK YOU for all your contributions and support.

[honeycomb]:														https://honeycomb.io/
[david]:																https://github.com/DavidS
[daiana]:       												https://github.com/daianamezdrea
[ciaran]:       												https://github.com/sanfrancrisko
[iac-41]:       												https://tickets.puppetlabs.com/browse/IAC-41
[alexjfisher]:       										https://github.com/alexjfisher
[davidswan]:       									    			https://github.com/david22swan
[adrian]:                                                                                       https://github.com/adrianiurca
[NITEMAN]:                                                                                      https://github.com/NITEMAN
[PDK]:                                                                                          https://github.com/puppetlabs/pdk
