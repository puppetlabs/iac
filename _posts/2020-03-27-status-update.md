---
layout: post
title: "27th March 2020: IAC Team Status Update"
author: daianamezdrea
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

## COVID-19 

Altough this situation affects all of us, we do our best to continue the good work. We chose to stay home in order to protect the community and stop the spread of the virus. We all miss the office and the chats about the weather next to the coffee machine, but here we have some friends, who are happy that we work remote: 

![Happy Friends]({%link/assets/2020-03-27-status-update/collage.jpg%})

Read [Puppet's blog: COVID-19](https://puppet.com/blog/covid-19-a-note-for-our-community/) for the official statement.

## Updates to Puppet Modules

Over the last week we have released:

- [puppetlabs/translate](https://forge.puppet.com/puppetlabs/translate) (v2.2.0)
- [puppetlabs/firewall](https://forge.puppet.com/puppetlabs/firewall) (v2.3.0)

## Community

Puppet Community was always a part of our team and we always appreciate the contributions you bring. Thank you, guys ! Here are a few highlights of this week :

- [puppetlabs-postgresql#1156](https://github.com/puppetlabs/puppetlabs-postgresql/pull/1156) by [veninga](https://github.com/veninga)
- [puppetlabs-firewall#908](https://github.com/puppetlabs/puppetlabs-firewall/pull/908) by [jbro](https://github.com/jbro)
- [puppetlabs-postgresql#1158](https://github.com/puppetlabs/puppetlabs-postgresql/pull/1158) by [XnS](https://github.com/XnS)

We look forward to see your new contributions to Puppet modules.

## Customer Escalations

This week, the team worked on the Panos module. (check out this [PR](https://github.com/puppetlabs/puppetlabs-panos/pull/119) for more details). Our purpose is to unblock testing and progress development.

## DSC Rework

We've started work on re-architecting and revitalizing our DSC builder (check out [IAC-41](https://tickets.puppetlabs.com/browse/IAC-41) for some details!) based on prototype work by [James Pogran](https://github.com/jpogran). In short, this project is aiming to provide a PowerShell module for Puppetizing DSC resources, complete with intellisense, help, and guardrails.
A bit further out and we'll have a new namespace on the forge - dsc - where we'll publish these automatically generated modules as 1:1 matches for the PowerShell modules with DSC resources on the [PowerShellGallery](https://www.powershellgallery.com/packages)!
We're working hard right now to pull the prototype across the last couple of miles to get an MVP for testing - if you're interested in beta testing this project with us, please reach out on [slack in #windows](https://slack.puppet.com/) or via [email](ia-content@puppet.com)

## Litmus Progress

On [Litmus](https://github.com/puppetlabs/puppet_litmus), the team had a productive week. We managed to fix some bugs that you can check out [here](https://github.com/puppetlabs/puppet_litmus/pull/271) and [here](https://github.com/puppetlabs/puppet_litmus/pull/272). Also, now we are able to capture more information for [honeycomb](https://github.com/puppetlabs/puppet_litmus/pull/264). 

For the other modules left to convert to Litmus, work has begun on: [puppetlabs/websphere_application_server](https://forge.puppet.com/puppetlabs/websphere_application_server), [puppetlabs/satellite_pe_tools](https://forge.puppet.com/puppetlabs/satellite_pe_tools) and [puppetlabs-reboot](https://forge.puppet.com/puppetlabs/reboot), with [puppetlabs-ibm_installation_manager](https://forge.puppet.com/puppetlabs/ibm_installation_manager)being the last module on the list! If you’re interested in converting a module to Litmus, feel free to get in touch with us during [Office Hours](https://puppet.com/community/office-hours/).

If you want to learn new things or just improve your skills, our team member, [David Schmitt](https://github.com/DavidS) has a lot of cookies [here](https://www.twitch.tv/dev_el_ops).

## Welcome to the team !

We started the week with a new team member. His name is Adrian Iurca and he also loves pets. We are so excited about having you on our team! Good luck and welcome aboard !

## Happy 5 years work anniversary, David Schmitt !

He has been an essential part of our team's journey and success. We are grateful for the dedication and passion you have shown.Thank you for being with us. Happy Work Anniversary! 

## Other things

Today we'll have our first virtual team lunch. 
