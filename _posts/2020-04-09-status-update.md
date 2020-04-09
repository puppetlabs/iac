---
layout: post
title: "8th April 2020: IAC Team Status Update"
author: michaeltlombardi
categories:
  - team
  - status
tags:
  - module updates
  - community
  - litmus
  - testing
  - dsc
  - powershell
  - windows
---

The IAC team has been hard at work over the past week.
Here's a brief overview of what we've been up to:

## New Module Releases (IAC Team)

Let's kick things off by highlighting a new module release:

- [puppetlabs/acl](https://forge.puppet.com/puppetlabs/acl) (v3.1.1)

## Community Contributions

As always, we work hand-in-hand with the broader Puppet community to get work done.
This week, we want to take a moment to highlight a few PRs and the people behind them!

First up, a [pull request to the puppetlabs/docker module][community-seriv-pr] by [Sergey Ivanov][community-seriv].
Sergey's work enabled the module to function transparently on RedHat systems utilizing the [`podman-docker` package!][podman-docker].
Thank you, Sergey!

We'd like to thank [Atanas Stoyanov][community-amorphina] for [his fix to the Apache module][community-amorphina-pr].
This PR ensures that the custom ldap options in `/etc/apache2/mods` can actually be applied and loaded, fixing a previously unknown bug!
Thank you, Atanas!

Finally, big Thanks to [Frank Wall][community-fraenki] for [his PR][community-fraenki-pr] that will fix [MODULES-10023][modules-10023], ensuring that the xtrabackup functionality in [puppetlabs/mysql][puppetlabs/mysql] actually works as intended!
Thank you, Frank!

## Supported Module Litmus Conversion

On the topic of [Litmus][litmus-gem-home], we're continuing to make progress on the conversion of all supported modules to the framework:

- [puppetlabs/reboot][puppetlabs/reboot] is _very nearly_ completed, running against all 33 of the supported platforms!
- [puppetlabs/websphere_application_server][puppetlabs/websphere_application_server] is wrapped!
- [puppetlabs/satellite_pe_tools][puppetlabs/satellite_pe_tools] is still progressing nicely!
- [puppetlabs/ibm_installation_manager][puppetlabs/ibm_installation_manager] is in progress now!

## Puppet + DSC: Phase II Begins!

We have continued to make excellent progress on our [refactor of DSC support][iac-41] in Puppet as we step in [Phase II][iac-685]!
To find out what we're doing, the reasoning behind it and why we're **SUPER EXCITED** about this, check out my [earlier blog post]({% link _posts/2020-03-30-dsc-announcement.md %})

The technical work this week has largely been in the de-prototyping details as we work to [convert the prototype build script into a supportable PowerShell module][iac-650].
We [scaffolded the module][dsc-pr-module-scaffold] out using [Fred Weinmann's][ps-fred] [PSFramework module][ps-fred-psframework], giving us some nice automatic testing and a bunch of options to improve UX down the road (including layered configurations and tab completion).
We [added our first sets of test code][dsc-pr-first-tests], [added a Vagrantfile][dsc-pr-vagrantfile] to the repository to make the development process easier on our team, and [enabled on-PR testing in Appveyor][dsc-pr-appveyor] to ensure we don't introduce regressions.

Work is currently underway to [decompose the module vendoring code][dsc-pr-vendoring] from the build script into a function in the module for ease of maintenance and testability.
Additionally, the [replacement of the extant templating engine is also underway][dsc-pr-templating] to reduce complexity and dependencies for the module.

But the biggest milestone this week has been bringing on board Puppet's own [Gene Liverman][puppet-gene], [John O'Connor][puppet-john], and the rest of our Developer Infrastructre & Operations Team as Customer 0 for this work, ensuring that we get live feedback as early as possible for our updated methodology.
We sent them beta versions of both the [NetworkingDsc][ps-networkingdsc] and [UpdateServicesDsc][ps-updateservicesdsc] PowerShell modules, puppetized!

That will let them test out replacing profiles like this:

```puppet
define profile::network::windows_interface (
  Array[Stdlib::IP::Address]    $ipaddress,
  String[1]                     $interfacealias,
  Enum['IPv4','IPv6']           $addressfamily = 'IPv4',
  Optional[Stdlib::IP::Address] $gw_address = undef,
){

  include profile::network::windows_install_dsc_modules

  dsc {"${name}-ip-address":
    resource_name => 'IPAddress',
    module        => 'NetworkingDsc',
    properties    => {
      ipaddress      => $ipaddress,
      interfacealias => $interfacealias,
      addressfamily  => $addressfamily,
    },
    require       => Class['profile::network::windows_install_dsc_modules'],
  }

  if $gw_address {
    dsc {"${name}-default-gw":
      resource_name => 'DefaultGatewayAddress',
      module        => 'NetworkingDsc',
      properties    => {
        address        => $gw_address,
        interfacealias => $interfacealias,
        addressfamily  => $addressfamily,
      },
      require       => Class['profile::network::windows_install_dsc_modules'],
    }
  }
}
```

With one using the beta modules, like this!

```puppet
define profile::network::windows_interface (
  Array[Stdlib::IP::Address]    $ipaddress,
  String[1]                     $interfacealias,
  Enum['IPv4','IPv6']           $addressfamily = 'IPv4',
  Optional[Stdlib::IP::Address] $gw_address = undef,
){

  dsc_ipaddress {"${name}-ip-address":
    dsc_ipaddress      => $ipaddress,
    dsc_interfacealias => $interfacealias,
    dsc_addressfamily  => $addressfamily,
  }

  if $gw_address {
    dsc_defaultgatewayaddress {"${name}-default-gw":
      dsc_address        => $gw_address,
      dsc_interfacealias => $interfacealias,
      dsc_addressfamily  => $addressfamily,
    }
  }
}
```

If you're interested in joining our beta program, which we will be launching in earnest after Easter, please [email us][dsc-email] ([dsc@puppet.com][dsc-email]) and let us know:

1. What are the top three PowerShell modules with DSC resources you'd like to see Puppetized?
2. Are you interested in joining our beta test group for this ongoing project?

If you just wanna keep an eye on things, you can follow the repository on GitHub and the [parent epic in JIRA][iac-41]!

## PowerShell 101 Training

In addition to helping oversee the DSC work, [Michael](https://github.com/michaeltlombardi) just wrapped up running the team through his [PowerShell 101 Course][pwshop], which focuses on helping with the "blinking cursor" problem:

> Help! I'm in a PowerShell prompt and have _no idea_ what to do from here!

It's meant not to turn you into a comprehensive PowerShell scripter but to get you up, running, and reasonably effective in a few hours.
It includes 12 lessons and 20 sets of exercises and is available right now, and for the duration of the impacts from COVID-19, for free.
If you've been thinking about learning about this (more than decade old, now!) young shell that the Windowsy devops crowd has been talking about, this is a good way to get started.

I've been helping to level up the team on PowerShell over the past several weeks as the DSC work becomes a serious focus and to generally help the team improve our Windows support skills.

[bolt]:                                    https://github.com/puppetlabs/bolt
[community-amorphina-pr]:                  https://github.com/puppetlabs/puppetlabs-apache/pull/2017
[community-amorphina]:                     https://github.com/amorphina
[community-fraenki-pr]:                    https://github.com/puppetlabs/puppetlabs-mysql/pull/1245
[community-fraenki]:                       https://github.com/fraenki
[community-seriv-pr]:                      https://github.com/puppetlabs/puppetlabs-docker/pull/562
[community-seriv]:                         https://github.com/seriv
[dsc-email]:                               mailto:dsc@puppet.com
[dsc-pr-appveyor]:                         https://github.com/puppetlabs/PuppetDscBuilder/pull/6
[dsc-pr-first-tests]:                      https://github.com/puppetlabs/PuppetDscBuilder/pull/3
[dsc-pr-module-scaffold]:                  https://github.com/puppetlabs/PuppetDscBuilder/pull/2
[dsc-pr-templating]:                       https://github.com/puppetlabs/PuppetDscBuilder/pull/5
[dsc-pr-vagrantfile]:                      https://github.com/puppetlabs/PuppetDscBuilder/pull/4
[dsc-pr-vendoring]:                        https://github.com/puppetlabs/PuppetDscBuilder/pull/7/files
[iac-41]:                                  https://tickets.puppetlabs.com/browse/IAC-41
[iac-650]:                                 https://tickets.puppetlabs.com/browse/IAC-650
[iac-685]:                                 https://tickets.puppetlabs.com/browse/IAC-685
[litmus-gem-home]:                         https://github.com/puppetlabs/puppet_litmus
[modules-10023]:                           https://tickets.puppetlabs.com/browse/MODULES-10023
[podman-docker]:                           https://developers.redhat.com/blog/2019/02/21/podman-and-buildah-for-docker-users/
[ps-fred-psframework]:                        https://psframework.org/
[ps-fred]:                                    https://github.com/FriedrichWeinmann
[ps-networkingdsc]:                        https://www.powershellgallery.com/packages/NetworkingDsc/7.4.0.0
[ps-updateservicesdsc]:                    https://www.powershellgallery.com/packages/UpdateServicesDsc/1.1.0.0
[puppet-gene]:                             https://github.com/genebean
[puppet-john]:                             https://github.com/jcoconnor
[puppet-michael]:                          https://github.com/michaeltlombardi
[puppetlabs/ibm_installation_manager]:     https://forge.puppet.com/puppetlabs/ibm_installation_manager
[puppetlabs/mysql]:                        https://forge.puppet.com/puppetlabs/mysql
[puppetlabs/reboot]:                       https://forge.puppet.com/puppetlabs/reboot
[puppetlabs/satellite_pe_tools]:           https://forge.puppet.com/puppetlabs/satellite_pe_tools
[puppetlabs/websphere_application_server]: https://forge.puppet.com/puppetlabs/websphere_application_server
