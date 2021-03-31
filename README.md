# the public Infrastructure Automation Content Team page

This repo hosts the source for the [Infrastructure Automation Content Team's page](https://puppetlabs.github.io/iac/).

## Writing a blog post

Contributions from everyone are welcome!
See the [jekyll docs](https://jekyllrb.com/docs/posts/) for a quick intro on the mechanics.

Please choose two categories for your post.
The first category should be a thing (like a tool, a module, or a technology),
the second category should be an activity (like development, testing, etc).
Tags can be anything that comes to mind, but please do look at other related posts to link with existing tags if possible.
Prefer singular over plural tags.

When writing long-form text, please use [semantic line breaks](https://sembr.org/) to make reviewing and editing easier.

Use your puppetcommunity slack handle for the `author` field.

## Reviewing output

To review a blog post,
pull down the PR and run `bundle install && bundle exec jekyll serve --future`
to get a locally hosted webserver that allows access to the rendered pages.
This will allow you to check formatting, links, etc, as it will be presented on the site.

## Ops-y things

On every push to main, the [deploy](./.github/workflows/deploy.yml) github action builds and deploys the current state to https://puppetlabs.github.io/iac/
Look at the [Jekyll Deploy action](https://github.com/puppetlabs/iac/actions?query=workflow%3A%22Jekyll+Deploy%22)
and the ["GitHub Pages" settings](https://github.com/puppetlabs/iac/settings)
to see if the build was successful.
Note that the github pages deployment is not very helpful with error messages.
The site is also rendered fresh every day at 02:00 UTC to publish new pages, if we already have scheduled pages for the future.
