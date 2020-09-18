---
layout: post
title: "18th September 2020: IAC Team Status Update"
author: sanfrancrisko
categories:
  - team
  - status
tags:
  - translate
  - concat
  - apt
  - haproxy
  - bolt
  - smoke tests
---

Hello folks!
Hope this Friday finds you all well?
Here's an update from the IAC Team for the week that was:

## Community Contributions
We'd like to thank the following people from the Community for their contributions this week:
- [jcpunk][jcpunk] has been busy cleaning up code in multiple repos to resolve warnings from [`puppet-lint`][puppet-lint]:
    - [puppetlabs-translate#93][translation-pr-93]
    - [puppetlabs-concat#660][concat-pr-660]
- [puppetlabs-stdlib#1126][stdlib-pr-1126]: [b4ldr][b4ldr] added this enhancement to `puppetlabs-stdlib` that adds a new data size type alias

Thank you [jcpunk][jcpunk] and [b4ldr][b4ldr] for your contributions!

## Module Releases
The following modules were released this week:
- [puppetlabs-apt][apt-forge] `v7.6.0`
- [puppetlabs-haproxy][haproxy-forge] `4.3.0`

## Bolt Smoke Tests
We'd like to thank the [Bolt][bolt] team, and specifically [lucywyman][lucywyman] for getting [a smoke test pipeline][bolt-pr-2164] up and running that verifies Bolt releases with Litmus!

Also, thanks to [jpogran][jpogran] and [nicklewis][nicklewis] for quickly jumping on [bolt#2188][bolt-issue-2188], discovered by [daianamezdrea][daianamezdrea].
Very much appreciated! :)

### Disha's Week 3 Update
I had a very busy and productive week 3 at [Puppet](https://puppet.com/). I started off my week 3 with the IDEA Working Group, where we discussed what to do with the upcoming events such as [Women Who Code](https://www.womenwhocode.com/) taking opinions of existing interns of how they applied to Puppet for their placement year and if there was anything that can be improved.On the same day, I started to work on [Learn Ruby The Hard Way](https://learnrubythehardway.org/book/)
During the week, I continued to work on this tutorial when I was free and so far made great progress. Later on in the week, I had some very interesting and enjoyable sessions of training. I had two sessions on [GitHub](https://github.com/)  training which was a high-level introduction, covering things like:-

**Part I:**
 - What is SCM?   Namespaces: puppetlabs, forks, etc   
 - Cloning a repo, pulling   
 - Creating a branch   
 - Adding, Commit and Removing etc   
 - How to create good commits (tagging with JIRA IDs, atomic commits, etc)  
 - Resolving conflicts (quick overview: working on a code repo with
   multiple collaborators / contributors)   
 - Pushing branches

**Part II:**
 - Push/pull destinations (e.g. upstream, origin, forks, etc)      
 - Creating a PR     
 - Code review basics (+ labelling)     
 - Rebasing 
   Getting out of trouble (removing commits, rewriting commits, resetting branches)       
 - Force pushing and how to cautiously use it!
 - Github issues and how to link to them in commits/PRs

During this session, I worked with [Ciaran](https://github.com/sanfrancrisko) and [Daiana](https://github.com/daianamezdrea).

I have also started my training on [PDKSync and Gem Testing](https://github.com/puppetlabs/pdksync) with [Sheena](https://github.com/sheenaajay). Check out the blogs on [PDKSync](https://puppet.com/blog/walkthrough-pdksync/). The session will be continued on Monday to complete the remaining training. In this session, the following topics were covered:- 

**Part I:**
 - Overview of pdksync Tool
 - How to create GITHub token and add to puppetlabs org 
 - How do we clone, make changes, commit, push and create PR using pdksync. 

After completing the session with [Sheena](https://github.com/sheenaajay), I then worked with [Daniel](https://github.com/carabasdaniel) to sort out the issue with Learning VM certificates signing and verification. I would like to say thanks to [Daniel](https://github.com/carabasdaniel) for all his help yesterday. I will continue this training once I have finished the Ruby [tutorials](https://learnrubythehardway.org/book/)

Finally, on Friday I attended a session with Caoimhe to give her an overview of how to use the [Queen's University Belfast](https://virtualcareersfairs.qub.ac.uk/events) Virtual Events Page for the Graduate and Placement Fair 2020 taking place virtually this October. 
We hope to see the QUB students at the virtual fair in this October! 
After the session with Caoimhe, I attended the weekly Belfast's Wrap Up Session. 
I also attended a zoom call with [John O' Connor][joc] where he gave me an overview of the what the Development Infrastructure Operations is and what they do! Thanks for such an informative session [John O'Connor][joc] on [Grafana](https://puppet.grafana.net/login), ABS, Mesos and Puppet Tech Tools Registry. 
That's all for this week from me!
Happy reading!!

[jcpunk]:               https://github.com/jcpunk
[puppet-lint]:          https://github.com/rodjek/puppet-lint
[translation-pr-93]:    https://github.com/puppetlabs/puppetlabs-translate/pull/93
[concat-pr-660]:        https://github.com/puppetlabs/puppetlabs-concat/pull/660
[stdlib-pr-1126]:       https://github.com/puppetlabs/puppetlabs-stdlib/pull/1126
[b4ldr]:                https://github.com/b4ldr
[apt-forge]:            https://forge.puppet.com/puppetlabs/apt
[concat-forge]:         https://forge.puppet.com/puppetlabs/concat
[haproxy-forge]:        https://forge.puppet.com/puppetlabs/haproxy
[lucywyman]:            https://github.com/lucywyman
[bolt-pr-2164]:         https://github.com/puppetlabs/bolt/pull/2164
[bolt]:                 https://github.com/puppetlabs/bolt
[bolt-issue-2188]:      https://github.com/puppetlabs/bolt/issues/2188
[jpogran]:              https://github.com/jpogran
[nicklewis]:            https://github.com/nicklewis
[daianamezdrea]:        https://github.com/daianamezdrea
[joc]:                  https://github.com/jcoconnor