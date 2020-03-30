---
layout: post
title: "Debugging unit-tests with Honeycomb"
author: dev_el_ops
categories:
  - module
  - development
tags:
  - modules
  - CI
  - debugging
  - testing
  - honeycomb
---

Since [last week]({% link _posts/2020-03-27-status-update.md %}#litmus-progress) we're collecting unit-test results and acceptance test runs in [honeycomb](https://honeycomb.io/), a tool for introspecting and interrogating production systems. In our team's case, CI is the "production" environment we manage. Today Daniel pointed out that there was a curious issue with one of our test suites:

```ruby
NoMethodError:
undefined method `message_lines' for #<RSpec::Core::Notifications::SkippedExampleNotification:0x00007f8407ac3018>
# /Users/danielcarabas/.rvm/gems/ruby-2.6.3/gems/rspec_honeycomb_formatter-0.2.0/lib/rspec_honeycomb_formatter.rb:95:in `example_pending'
```

That clearly rings a bell, but a trivial try at reproducing this using `pending` brought up a weird issue:

```ruby
From: /home/david/git/rspec_honeycomb_formatter/lib/rspec_honeycomb_formatter.rb @ line 99 RSpecHoneycombFormatter#example_pending:

     95: def example_pending(notification)
     96:   @example_span.add_field('rspec.result', 'pending')
     97:   @example_span.add_field('name', notification.example.description)
     98:   @example_span.add_field('rspec.description', notification.example.description)
 =>  99:   require'pry';binding.pry
    100:   @example_span.add_field('rspec.message', strip_ansi(notification.message_lines.join("\n")))
    101:   @example_span.add_field('rspec.backtrace', notification.formatted_backtrace.join("\n"))
    102:   @example_span.send
    103: end

[1] pry(#<RSpecHoneycombFormatter>)> notification.class
=> RSpec::Core::Notifications::PendingExampleFailedAsExpectedNotification
[2] pry(#<RSpecHoneycombFormatter>)>
```

The class here is not the same as the initial report is complaining about.
And this does not fail.
`PendingExampleFailedAsExpectedNotification` does have `message_lines`.
Since the original report didn't any more information attached (and for the sake of the pacing of this blog post) I went to honeycomb to see if other modules were exhibiting the same problem.
After a couple of clicks this was what I had:

![honeycomb heatmap screenshot]({% link assets/2020-03-30-debugging-with-honeycomb/honeycomb-heatmap.png %})

The query selects by the error message and returns all examples with that error message.
Clearly this has been going on for a while.
Clicking through to the raw data I could jump to the full log of one of the runs:

![honeycomb raw data screenshot]({% link assets/2020-03-30-debugging-with-honeycomb/honeycomb-raw-data.png %})

Which brings us to [this failure on github actions](https://github.com/puppetlabs/puppetlabs-package/runs/544125013#step:3:445):

```ruby
================
unlikely-toxin.delivery.puppetlabs.net, win-2008r2-x86_64
**F****FFFFFF

Pending: (Failures listed here are expected and do not affect your suite's status)

  1) package task install installs pry
     # Don't run on Windows
     On host `unlikely-toxin.delivery.puppetlabs.net'
     Failure/Error: @example_span.add_field('rspec.message', strip_ansi(notification.message_lines.join("\n")))
     NoMethodError:
       undefined method `message_lines' for #<RSpec::Core::Notifications::SkippedExampleNotification:0x00007fe474773368>

```

This in turn I can look up in [the source code](https://github.com/puppetlabs/puppetlabs-package/blob/b7ff8d9a3982287f30a20111f86413b0350d20d6/spec/acceptance/init_spec.rb).
I'm assuming the following clause is the issue:
```ruby
before(:each) do
  skip "Don't run on Windows" if operating_system_fact == 'windows'
end
```

Putting that into the manual test case quickly confirmed that this was indeed the problem.
After being able to reproduce this locally, it was a matter of poking pry to figure out what needs to be done about it.
The `SkippedExampleNotification` doesn't have a `message_lines` method, and needs to be handled differently.
The result has been posted in the ["Fix missing message_lines method" PR](https://github.com/puppetlabs/rspec_honeycomb_formatter/pull/10) and should be merged and released by the time you read this post.

Finally, to cross-check that this is the only problem we've been seeing, I've added a `rspec.message does-not-contain SkippedExampleNotification` clause to the honeycomb query.
That new query did not return any results, increasing my confidence in having addressed all currently visible issues with the formatter.
