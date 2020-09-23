# Bootstrap Blog

## Psst...IAC Team Member! Read This!

Have you been on Triage?

Don't you hate it when you had to go through all the various Slack threads and Github PRs to try and figure out what awesome contributions the Puppet Community have made this week for our weekly blog?

Well, this is the tool for you!

## What does it do?

The `bootstrap_blog.rb` script will:

- Determine the last IAC weekly status update blog post date (_usually, last Friday_)
- Check what modules have been released between then and today
- Check what PRs have been merged to the `main` branch of the  [IAC Supported Modules][iac-supported-modules] repos that are from the Puppet Community and:
  - Grab the author Github details to credit them for their great work
  - Grab any additional contributor or collaborators' Github details on the PR to credit them (_based off comments on PR_)
- Bootstrap the blog in markdown with:
  - Module release announcements for the past week
  - PR contributions for the past week

...and all the necessary links required at the bottom of the file!

## How do I run it?

You'll need to supply your Github authentication token with a minimum or RO access to the `GITHUB_TOKEN` ENV var:

```bash
# Assuming from repo root

cd bin/blog_tools
bundle install
GITHUB_TOKEN=abcdefg1234567 bundle exec ruby bootstrap_blog.rb
```

## What is the output?

It will generate a weekly status update blog template that can be further enhanced for the next Friday weekly update.
All this is built off the template in `blog_template/status-update-template.md.erb`

### Filename and Location

- It'll create the appropriate `MD` under `_posts/` with the upcoming Friday's date:

```bash
_posts/2020-09-25-status-update.md
```

### Header / Metadata Generation

- The `title` parameter will also have the upcoming Friday's date
- The Github username derived from the supplied token (`GITHUB_TOKEN`) will populate the `author` parameter
- **NOTE:** `categories` and `tags` will need to be updated manually

```md
---
layout: post
title: "2020-09-25: IAC Team Status Update"
author: sanfrancrisko
categories:
  - team
  - status
tags:
---
```

### Community Contribution Generation

- The PRs will be linked
- The author's Github profiles will be linked
- If there were any other contributors / collaborators commenting on the PR, the will be credited too
- Bots (e.g. `codecov`) and other such comments attributed to them will be filtered out (**NOTE:** You may need to add to this - see the `COMMENT_AUTHOR_IGNORE_LIST` in `lib/community_prs.rb`)
- IAC Team members will not be credited for their PRs or contributions to Community member PRs...sorry. 

```md
## Community Contributions

We'd like to thank the following people in the Puppet Community for their contributions over this past week:
- [`puppetlabs-module_abc#123`][puppetlabs-module_abc-123]: Thanks to [Contributor-Name-A][Contributor-Name-A]
- [`puppetlabs-module_efg#456`][puppetlabs-module_efg-456]: Thanks to [Contributor-Name-B][Contributor-Name-B]
- [`puppetlabs-module_xyz#789`][puppetlabs-module_xyz-789]: Thanks to [Contributor-Name-C][Contributor-Name-C] and the following people who helped get it over the line ([Contributor-Name-D][Contributor-Name-D])
```

### Modules Released Generation

- The module Github repos will be linked
- The version number of the release will be referenced

```md
## New Module / Gem Releases

The following modules were released this week:
- [`puppetlabs-module_abc`][puppetlabs-module_abc] (`1.2.3`)
- [`puppetlabs-module_def`][puppetlabs-module_def`] (`4.5.6`)
- [`puppetlabs-module_xyz`][puppetlabs-module_xyz] (`7.8.9)
```

### All the links!

All the link references required to render the data above are dumped at the bottom of the file:

```md
[puppetlabs-module_abc]: https://github.com/puppetlabs/puppetlabs-module_abc
[puppetlabs-module_def]: https://github.com/puppetlabs/puppetlabs-module_def
[puppetlabs-module_xyz]: https://github.com/puppetlabs/puppetlabs-module_xyz
[Contributor-Name-A]: https://github.com/Contributor-Name-A
[Contributor-Name-B]: https://github.com/Contributor-Name-B
[Contributor-Name-C]: https://github.com/Contributor-Name-C
```

## What does it **NOT** do?

- Fills in the tags
- Gives a genuine heartfelt thanks to the contributors and collaborators for their contributions
- Magically knows what else happened on the IAC Team worth mentioning this week

[iac-supported-modules]: https://puppetlabs.github.io/iac/modules/
