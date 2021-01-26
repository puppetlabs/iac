---
layout: post
title: "Converting to use Puppetized DSC Modules"
author: pmcmaw
categories:
  - dsc
  - puppet
  - modules
tags:
  - tooling
  - dsc resources
  - windows
  - modules
  - forge
  - powershell gallery
---

## Why bother?

To check out our reasons on why we think converting your module is a good idea, check out these blog posts written by [Michael][mlombardi]:

- [DSC accouncement post][dsc_accouncement]
- [DSC release post][dsc_release]

The blog posts cover information including:

- Why we are doing this
- Details about the builder
- How to Pupperize your Powershell module
- How to use your Puppetized module

**Seriously though what is there to not love?**

- Minimal module maintainence costs
- Automated module building
- Property by property reporting
- VSCode Extension with intellisense
- We have 68 modules on the Forge in the [DSC namespace][dsc-namespace]
- Converting is relatively straight forward

## So how can I do this?

*Old method:*

```puppet
mod 'puppetlabs-dsc', '1.9.4'
```

*New method:*

```puppet
mod 'puppetlabs-pwshlib', '0.7.1'
mod 'dsc-activedirectorycsdsc', '3.1.0-0-0'
mod 'dsc-auditpolicydsc', '1.4.0-0-1'
mod 'dsc-certificatedsc', '4.4.0-0-0'
mod 'dsc-computermanagementdsc', '6.2.0-0-0'
mod 'dsc-dfsdsc', '4.3.0-0-0'
mod 'dsc-networkingdsc', '7.0.0-0-0'
mod 'dsc-officeonlineserverdsc', '1.2.0-0-0'
mod 'dsc-securitypolicydsc', '2.7.0-0-0'
mod 'dsc-sharepointdsc', '3.2.0-0-0'
mod 'dsc-sqlserverdsc', '12.3.0-0-0'
mod 'dsc-storagedsc', '4.5.0-0-0'
mod 'dsc-systemlocaledsc', '1.2.0-0-0'
mod 'dsc-xactivedirectory', '2.24.0-0-0'
mod 'dsc-xazure', '0.2.0-0-0'
mod 'dsc-xazurepack', '1.4.0-0-0'
mod 'dsc-xbitlocker', '1.4.0-0-0'
mod 'dsc-xcredssp', '1.3.0-0-0'
mod 'dsc-xdatabase', '1.9.0-0-0'
mod 'dsc-xdefender', '0.2.0-0-0'
mod 'dsc-xdhcpserver', '2.0.0-0-0'
mod 'dsc-xdisk', '1.0.0-0-0'
mod 'dsc-xdismfeature', '1.3.0-0-0'
mod 'dsc-xdnsserver', '1.11.0-0-0'
mod 'dsc-xexchange', '1.27.0-0-0'
mod 'dsc-xfailovercluster', '1.12.0-0-0'
mod 'ddsc-xhyper_v', '3.16.0-0-0'
mod 'dsc-xinternetexplorerhomepage', '1.0.0-0-0'
mod 'dsc-xjea', '0.2.16-6-0'
mod 'dsc-xmysql', '2.1.0-0-0'
mod 'dsc-xpendingreboot', '0.4.0-0-0'
mod 'dsc-xphp', '1.2.0-0-0'
mod 'dsc-xpowershellexecutionpolicy', '3.1.0-0-0'
mod 'dsc-xpsdesiredstateconfiguration', '8.5.0-0-0'
mod 'dsc-xremotedesktopadmin', '1.1.0-0-0'
mod 'dsc-xremotedesktopsessionhost', '1.8.0-0-0'
mod 'dsc-xrobocopy', '2.0.0-0-0'
mod 'dsc-xscdpm', '1.2.0-0-0'
mod 'dsc-xscom', '1.3.3-0-0'
mod 'dsc-xscsma', '2.0.0-0-0'
mod 'dsc-xscspf', '1.3.1-0-0'
mod 'dsc-xscsr', '1.3.0-0-0'
mod 'dsc-xscvmm', '1.2.4-0-0'
mod 'dsc-xsmbshare', '2.1.0-0-0'
mod 'dsc-xsqlps', '1.4.0-0-0'
mod 'dsc-xtimezone', '1.8.0-0-0'
mod 'dsc-xwebadministration', '2.5.0-0-0'
mod 'dsc-xwebdeploy', '1.2.0-0-0'
mod 'dsc-xwindowseventforwarding', '1.0.0-0-0'
mod 'dsc-xwindowsrestore', '1.0.0-0-0'
mod 'dsc-xwindowsupdate', '2.7.0-0-0'
mod 'dsc-xwineventlog', '1.2.0-0-0'
mod 'dsc-xwordpress', '1.1.0-0-0'
```

I know this *looks* like a lot of work, but really the work has been done for you!
Just copy and paste the above code snippet.

> The modules above are as alike to the `puppetlabs-dsc` module as we could possibly get.
> It is strongly recommended to migrate to these versions and when everything is up and running, upgrading to the latest versions.

## A few caveats

The following modules cannot be automatically puppetized at the same version because they referenced commit SHAs instead of versions discoverable on the [gallery;][psgallery]
instead, we recommend using the next released stable version after those SHA's, as listed below:

>_**Note:** These are close but not precise replacements:_

```puppet
mod 'dsc-fsrmdsc', '2.5.0-0-0'
mod 'dsc-iscsidsc', '2.0.0-0-0'
mod 'dsc-wsmandsc', '2.4.0-0-0'
```

Here are links to the specific commit SHAs that have been referenced:

- [FSRMDsc][fsrmdsc]

- [iSCSIDsc][iscsidsc]

- [WSManDsc][wsmandsc]

>_**Note:** puppetized as `dsc/wminamespacesecurity` due to the name of the module changing when pushed to the [PowerShell Gallery][psgallery] vs the old code repository._

```puppet
mod 'dsc-wminamespacesecuritydsc', '0.3.0-0-0'
```

Again here is a link to the specific commit SHA that has been referenced:

- [WmiNamespaceSecurityDsc][wmiNamespaceSecurityDsc]

## Guidance on troubleshooting

Coincidently [Michael][mlombardi] has just published a blog post on how to troubleshoot for DSC.

Check it out on our [blog page][blog-page]!

## Some things come for free!

We suggest using the Puppet VSCode extension as it comes built in with an auto-completer. This will help you keep your pins up to date with the puppetfile resolver.

![Showing validation errors in your Puppetfile](/iac/assets/2021-01-26-converting-dsc-modules/puppetfile-resolver.gif)

## What else is coming

As part of our next phase we plan to flesh out and update our testing infrastructure for this module on our road to the `1.0.0` release of `Puppet.Dsc`.
In the pipeline, we still plan on getting nightly builds into place to ensure that there is never more than a 24 hour lag between published Powershell modules with DSC Resources and our Puppetized modules on the Forge.

As always if you have any questions don't hesistate to reach out to us via [Slack][puppet-slack] or [emailing][dsc-email] and we will be as accomodating as we can be!

[blog-page]: https://puppetlabs.github.io/iac/
[dsc-email]: mailto:dsc@puppet.com
[dsc_accouncement]: https://puppetlabs.github.io/iac/news/roadmap/2020/03/30/dsc-announcement.html
[dsc-namespace]: https://forge.puppet.com/dsc
[dsc_release]: https://puppetlabs.github.io/iac/news/roadmap/2020/09/21/dsc-release.html
[fsrmdsc]: https://github.com/dsccommunity/FSRMDsc/commit/8945f610fa9a6f7f920260abf4e50d91db25bac0
[iscsidsc]: https://github.com/dsccommunity/iSCSIDsc/commit/2208ad24a0cc0a85ce19fb377e72fbc21d366587
[mlombardi]: https://github.com/michaeltlombardi
[puppet-slack]: https://slack.puppet.com/
[psgallery]: https://www.powershellgallery.com
[wsmandsc]: https://github.com/dsccommunity/wsmandsc/commit/1aa6400e7ffa1932505bf9904a7ce9e147af9c45
[wmiNamespaceSecurityDsc]: https://github.com/PowerShell/WmiNamespaceSecurityDsc/commit/d49daa4c18f12aabf32fd60631d927c6d276a453
