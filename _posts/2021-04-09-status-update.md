---
layout: post
title: "2021-04-09: IAC & DevX Status Update"
author: carabasdaniel
categories:
  - team
  - status
tags:
  - pdk
  - cloudci
  - terminology
  - ibm
  - kubernetes
---

## Community Contributions

Although this week we did not have any contributions merged, we would like to say a special thank you to [Daiana][Daiana] and [Michael][Michael]. Between them 39 PRs were processed for tooling and supported modules as other team members were on PTO.

On top of that we are really happy to announce that [puppetlabs-ibm_installation_manager](https://github.com/puppetlabs/puppetlabs-ibm_installation_manager) is now [supported](https://tickets.puppetlabs.com/browse/PF-2343) by the team.

Check [all the ways to reach us]({% link _posts/2021-01-20-reaching-out.md %}) if you want to directly contact us about anything module related.

## PDK 2.1 Release
We're delighted to announce the release of PDK 2.1!
This is the first release that the DevX team have performed but it certainly won't be the last!
Exciting things in store for the PDK and more regular releases planned for 2021. 
Check out the release notes for 2.1 [here](https://puppet.com/docs/pdk/2.x/release_notes_pdk.html)

### Cloud CI Update
This week we are closing a new milestone for the Cloud CI. We finally decided to close the multi-node testing milestone as we currently have a couple of modules already using this feature (puppetlabs-kubernetes, puppetlabs-ibm_installation_manager and soon puppetlabs-websphere_application_server). 
More good news is that this week, the support team managed to port their first module to use the Cloud CI provisioning for their PR/Nightly tests on the [support-tasks](https://github.com/puppetlabs/support-tasks) module. We are hopeful this will make testing and releasing a lot easier in the future for them.
We are now mainly focusing on training and educational materials so a couple of demo videos will soon follow.

### Other work

**Important**: We are preparing to clean up our supported module repositories and the previous *master* branch will be removed from all repositories by the end of next week. 

The IAC Team is currently evaluating [ZenHub](https://www.zenhub.com/) and [Zube](https://zube.io) for managing issues across our repositories. The team would really appreciate any feedback from the Puppet Community, so please feel free to reach out to us if you any suggestions/recommendations ?

<!-- check https://tickets.puppetlabs.com/secure/RapidBoard.jspa?rapidView=1176&quickFilter=8745 for other tickets closed out this week that should be mentioned here -->

  [Adrian]:             https://github.com/adrianiurca
  [Ben]:                https://github.com/binford2k
  [Ciaran]:             https://github.com/sanfrancrisko
  [Daiana]:             https://github.com/daianamezdrea
  [Danny]:              https://github.com/carabasdaniel
  [DavidArmstrong]:     https://github.com/da-ar
  [DavidSchmitt]:       https://github.com/DavidS
  [DavidSwan]:          https://github.com/david22swan
  [Disha]:              https://github.com/Disha-maker
  [James]:              https://github.com/jpogran
  [Lore]:               https://github.com/lionce
  [Michael]:            https://github.com/michaeltlombardi
  [Paula]:              https://github.com/pmcmaw
  [Sheena]:             https://github.com/sheenaajay
  [Supported Modules]:  https://puppetlabs.github.io/iac/modules/
  [Tools]:              https://puppetlabs.github.io/iac/tools/
