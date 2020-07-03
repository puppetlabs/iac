layout: post
title: "3th July 2020: IAC Team Status Update"
author: daianamezdrea
categories:
  - team
  - status
tags:
  - releases
  - community_management
  - java_ks
  - tagmail
  - apache
  - ibm_installation_manager
  - litmus
  - shoutouts
---

The IAC team has been working on a lot of things over the past week.
We want to share with our community some of the most interesting things.
Here’s a brief overview of what we’ve been up to:

## Module Releases from IAC Team

- [puppetlabs/apache](https://github.com/puppetlabs/puppetlabs-apache)(5.5.0)
- [puppetlabs/java_ks](https://github.com/puppetlabs/puppetlabs-java_ks)(3.2.0)
- [puppetlabs/tagmail](https://github.com/puppetlabs/puppetlabs-tagmail)(3.3.0)
- [puppetlabs/ibm_installation_manager](https://github.com/puppetlabs/puppetlabs-ibm_installation_manager)(2.2.0)

## puppet_litmus 0.18.4 was released

We have released v0.18.4 of the [puppet_litmus gem][https://github.com/puppetlabs/puppet_litmus].
There were quite a number of fixes but a few highlights worth mentioning:

[DavidS](https://github.com/DavidS) - Protect version reporting from undefined-ness: [312](https://github.com/puppetlabs/puppet_litmus/pull/312) 

[lswith](https://github.com/lswith) - Ignore stderr of serverspec commands by setting request pty to false [309](https://github.com/puppetlabs/puppet_litmus/pull/309)

## Community Shout outs for IAC

We appreciate our community contributors as they are always ready to help and they have excellent ideas. Here are some highlights of this week:

Thanks to [Guillaume Leroy](https://github.com/leroyguillaume) for the bug [fix](https://github.com/puppetlabs/puppetlabs-tomcat/pull/400) on tomcat module.

Thanks to [Marc Schöchlin](https://github.com/scoopex) for the kubernetes PRs which bring a lot of new changes.
We'd also like to call out two fixes in the `puppetlabs-apache` module: [h-haaks](https://github.com/h-haaks) for [2041](https://github.com/puppetlabs/puppetlabs-apache/pull/2041) and [farebers](https://github.com/farebers) for [2021](https://github.com/puppetlabs/puppetlabs-apache/pull/2021).
## Customer tickets closed this week

The team have closed out the following customer tickets: MySQL issue ([MODULES-10597](https://tickets.puppetlabs.com/browse/MODULES-10597)) and a vcsrepo issue ([MODULES-10659](https://tickets.puppetlabs.com/browse/MODULES-10659)).

Big thanks to [Adrian](https://github.com/adrianiurca) and [Sheena](https://github.com/sheenaajay).

## Contributors Acknowledgements (it's always nice to hear back from the community)

*FYI my contribution has been released. It's fantastic! Faster than I ever thought!* - [Filip Hrebek](https://github.com/fhrbek)

*I'm happy that my (little) contribution to @puppetize #tomcat module was merged* - [Francis](https://github.com/leroyguillaume)

Thank you, folks! Thank you for your contributions and your positive feedback!

## Final exam for Daiana 

Tuesday, Daiana had her last exam from college, now she is officially an engineer and she started the work on the docker and kubernetes modules.

## Michael Lombardi got a well deserved promotion

Michael Lombardi is now a Senior Software Engineer. Well done, Michael, the promotion was long overdue and truly deserved. Thank you Michael for the hard work! Congratulations!

## Apache module work in progress 

This week sees a lot of excellent community contributions in `v5.5.0` of the [puppetlabs-apache](
https://forge.puppet.com/puppetlabs/apache) module.
We have also been working on improving our test strategy around [Apache MODs](https://httpd.apache.org/docs/2.4/mod) to ensure we can turn around updates to the module in a faster manner.
Check out [sanfrancrisko’s](https://github.com/sanfrancrisko) [blog post]({% link _posts/2020-07-03-apache-mod-test-improvements.md %}) which outlines what we’ve done and how we’re handling test coverage for [Apache MODs](https://httpd.apache.org/docs/2.4/mod), going forward.

## Wrap-up

That’s it for this weeks update, a big THANK YOU for all your contributions and support.
