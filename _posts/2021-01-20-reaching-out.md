---
layout: post
title: "2021-01-20: Reaching the IAC Team"
author: pmcmaw
categories:
  - team
tags:
  - community
  - reviews
  - modules
  - windows
  - communication
---
![hello]({% link /assets/2021-01-20-reaching-out/hello.png %}){:height="170px" width="170px"}

To improve collaboration and avoid issues falling through the cracks, we have collected information on all the ways to get in contact with us. Whether this be to review a PR, highlight a nasty bug or really for any other reason, let us know what we did well, and what we need to do better.

## Monday is Community Day ![slack]({% link /assets/2021-01-20-reaching-out/calendar.png %}){:height="30px" width="30px"}

Yes, that's right! The whole team dedicates a full day to you every week. Every Monday we go over pull requests, releases, new issues and anything else module related.

## Reaching out via Slack ![slack]({% link /assets/2021-01-20-reaching-out/slack.png %}){:height="45px" width="45px"}

As part of Community Monday, we have weekly office hours on Monday 1.00pm and 5.00pm GMT alternating each week. Check the [calendar](https://puppet.com/community/office-hours) for the events in your timezone. Join #office-hours on our [community-slack](https://puppetcommunity.slack.com). Between these hours the IAC team will be online and can chat about anything module related and much more!

Outside the office hours, some of us hang out in #forge-modules and #testing on our [community-slack](https://puppetcommunity.slack.com). Even if nobody from the team is around, other community members might be able to help.

**Use the ![sos]({% link /assets/2021-01-20-reaching-out/sos.gif %}){:height="50px" width="50px"}
 emoji on urgent issues that require the attention of a puppet employee.**

## Reaching out via Jira ![bug]({% link /assets/2021-01-20-reaching-out/bug.png %}){:height="40px" width="40px"}

When you come across an issue with one of our supported modules and want to raise an issue, in order for to it to come directly to us there are a few things we would doing first.

1) Confirm this issue hasn't already been raised by using the JIRA search function

2) If the repository has issues enabled, use this instead of JIRA

Once the above has been confirmed, it is recommended that you complete the following settings in the ticket. This will ensure that our team sees the ticket pretty quick.

The values we would recommend setting are:

  ```Project:``` This will always need set to **'Modules'** if you want it to land with our team.

  ```Issue Type:``` In most cases you will be raising bugs against our supported modules however you can choose the description that best suits your problem.

  ```Summary:``` Just a quick simple summary of the topic you are looking to highlight to us.

  ```Component:``` This is used to tag the module afffected and ensure the correct person sees your issue.

  ```Description:``` This is one of the most important sections, add in here as much details as you possibly can, this should include:

    1) Description of the issue you are seeing
    2) Steps to Reproduce
    3) Expected Results
    4) Actual Results
    5) Logs/Screenshots/Sample Manifests

  For more information on writing a good bug report check out this page on [RubyGarage](https://rubygarage.org/blog/how-to-write-a-quality-bug-report).

  ```Environment:``` What OS did did you see it on? Which puppet version is affected? What is the module version? You can even include more information like the Ruby version. Again the more information you include here, the higher likelihood of us being able to reproduce and speed up our turnaround.

  ```Acceptance Criteria:``` What exactly do you want to be able to achieve with the issue being resolved?

## Some things just can't wait ![clock]({% link /assets/2021-01-20-reaching-out/clock.png %}){:height="40px" width="40px"}

If you ever find yourself in this position please don't hesitate to reach out to our team using email and we will do our best to help you out. Our team alias is: ia_content@puppet.com

## Useful Tips ![magic]({% link /assets/2021-01-20-reaching-out/magic.png %}){:height="40px" width="40px"}

- All supported modules have an examples directory with example manifests
- If your struggling to write a manifest check out our tests in spec/acceptance
- We have a some demos uploaded on youtube!

## Other team contacts

# Security Team

For security critical information use <security@puppet.com>. 

*Your alert will be handled by our security specialists and routed to the right team. See also the [security page](https://puppet.com/security/) on puppet.com.*

# Bolt Team

Use the issues tab [on the repo](https://github.com/puppetlabs/bolt/issues).

# Puppet Agent Team

<team-nw@puppet.com>

# Forge Team

<forge@puppet.com>