---
layout: page
title: "How we do Pull Requests"
author: michaeltlombardi
categories:
  - team
  - basics
tags:
  - git
  - github
  - PRs
  - pull requests
  - code review
---

[This was originally posted as [a twitter thread](https://twitter.com/TrebuchetOps/status/1257781807870816257) by [Michael](https://twitter.com/TrebuchetOps). This version edited by [DavidS](https://github.com/DavidS). I've tried to stay faithful to the original tone while unraveling twitter lingo. All errors are my own.]

[ReinH](https://twitter.com/ReinH)'s [thread on PRs](https://twitter.com/ReinH/status/1257773735815213057) is a good thread and while I can't speak to how anyone else uses PRs, I _can_ talk about how my team does.

Background: we're a team of about 10 people (I'm on [paternity leave](https://twitter.com/TrebuchetOps/status/1256985345830400002) as of Sunday, so not poking my head into slack to double check my math) with about 75 "supported" project repos and another 100+ "unsupported" - including Puppet modules, Ruby gems, PowerShell modules, and more.
We process (submit, merge, or close) over 350 PRs a month from our own team, from community folx, from other people at Puppet.

So we rely on PRs a lot, but for what?

Collaboration and safety, mostly!

We very often throw up early WIP (Work In Progress) PRs and ping them around the team, solicit and provide feedback, pair or help each other, using the PR as our main point of syncing context on the code.
We supplement this with other tools, of course!

But my team is also spread across two continents and three timezones, (I'm the only USAian on my team, everyone else is in Belfast or Timișoara), so async-first work is the only way we can really get things done.
PRs support this!
We can comment, post questions, make suggestions, add context, link resources, etc all on the PR, so you can push your WIP and return to it tomorrow (or earlier, most of the time!)

It's super common to ping each other with a question on a PR for us.

Okay, so that's the collaboration angle, but it relates to safety, too.

We check that we can understand the code being merged (we're all on the hook for maintaining merged code, after all), that it's tested and documented, and does what it says it should.
We make sure every change to the code gets another set of human eyes—**NOT** because we don't trust someone on our team, but because we trust our collective skill and attention more than any single person, regardless of skill level or experience.
It's entirely human, and therefore *easy* to make mistakes or overlook something in a code change.
Adding a human review doesn't magically make those go away but it catches a bunch of them.
It also builds context for the changing code across our team which is critically important if something does slip through and we introduce a bug, because 2+ humans know what was intended and how it worked and can help work on the fix.

PRs aren't magic, they don't remotely solve all the problems your team has, but they are great tools for collaboration and safety practices in your team, in my opinion, and they only get stronger when reinforced by team practices like pairing and frequent demos and async comms.
