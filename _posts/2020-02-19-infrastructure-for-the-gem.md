---
layout: post
title: "Setting up basic infrastructure for your gem"
author: sheenaajay
categories:
  - gem
  - development
tags:
  - walkthrough
  - modules
  - testing
---

## Introduction

Here we will be going through the steps and best practices for setting up basic infrastructure for your gem.
The steps given can be followed by anyone to setup the basic infrastructure for gem development which does the following.
  - creates the basic file structure for the gem.
  - adds the rubocop which validates the guidelines outlined in the community Ruby Style Guide.
  - adds the travis or appveyor testing to the repo which validates the changes to the repo.
  - adds the dependendabot to the repo which creates pull requests to keep dependencies up to date.

> #### Note:
>
> This walkthrough assumes you have the following software installed:
>
> - [Ruby](https://www.ruby-lang.org/en/downloads/)
>
> It also assumes familiarity with the [Ruby gems](https://rubygems.org/).
>

## Infrastructure for your gem

We're going through the steps and best practices for setting up basic infrastructure for your gem.

For any repo created for developing a Gem we add owner, access and license to the repo.
Follow the steps below to add them.

1. Open a [git hub](https://github.com) page, perform the rest of these actions from there.
   1. Click on + to create a new repo.
      ![+]({% link /assets/2020-02-19-infrastructure-for-the-gem/newrepo.png %})

   2. Provider the owner information, repo name and license.
      ![owner information and repo name]({% link /assets/2020-02-19-infrastructure-for-the-gem/owner.png %})
      ![license]({% link /assets/2020-02-19-infrastructure-for-the-gem/license.png %})

   3. Click on Create repository button.

   4. Open the new repo created and navigate to settings tab to update the access.

   5. Provide your team as admin on github. (This example shows Puppet's modules team)
      ![admin]({% link /assets/2020-02-19-infrastructure-for-the-gem/githubowner.png %})

Follow the steps below for creating the gem structure, add the rubocop validation, add the travis or appveyor testing to the repo.

1.  Open the command line and perform the rest of these actions from there.
    1.  Clone the new repo created. Add the upstream project and checkout the branch.
    ```shell
    git clone https://github.com/sheenaajay/puppet-modulebuilder.git
    git remote add puppetlabs https://github.com/puppetlabs/puppet-modulebuilder.git
    git checkout -b blogpost
    ```
    2.  Create a ruby gem with bundler and perform the commit.
    ```shell
    bundle gem puppet-modulebuilder
    git add -A
    git commit -m "Initial commit of puppet-modulebuilder gem scaffolding"
    ```
    3.  Remove unused default gem development scripts if any and perform the commit.
    ```shell
    rm -r bin/console
    rm -r bin/setup
    git add -A
    git commit -m "Remove unused default gem development scripts"
    ```
    4.  Update gemspec with actual values for spec.authors, spec.email, spec.summary, spec.description, spec.homepage, spec.metadata.
        ![gemspec]({% link /assets/2020-02-19-infrastructure-for-the-gem/gemspec.png %})
    ```shell
    git add -A
    git commit -m "Update gemspec with actual values"
    ```
    5.  Copy puppet-style rubocop rules(Example from [pdk repo](https://github.com/puppetlabs/pdk/blob/master/.rubocop.yml)), activate and apply default fixes.
    ```shell
    bundle install --path .bundle/gems/
    bundle exec rubocop
    git add -A
    git commit -m "Include, activate rubocop, apply default fixes"
    ```
    6.  Add instruction files for travis-ci and appveyor. Sample [PR](https://github.com/puppetlabs/puppet-modulebuilder/pull/1) contains travis.yml and appveyor.yml.
    ```shell
    git add -A
    git commit -m "Add instruction files for travis-ci and appveyor"
    ```
    7.  Add modules team to CODEOWNERS.
      Create the CODEOWNERS file in .github/CODEOWNERS
    ```shell
    git add -A
    git commit -m "Add modules team to CODEOWNERS"
    ```

2. Finally push your changes to the branch and create the PR "Basic infrastructure"
   Sample [PR](https://github.com/puppetlabs/puppet-modulebuilder/pull/1) for reference

3. Follow the steps below for enabling CI jobs and dependabot for the repo.
   1. Set up travs-ci.org for simple rubocop and spec testing. Open a [travis-ci-org](https://travis-ci.org/account/repositories) page. Click on      Sync account.
      ![Sync account]({% link /assets/2020-02-19-infrastructure-for-the-gem/syncaccount.png %})
   2. Set up appveyor for simple rubocop and spec testing. Open a [ci-appveyor](https://ci.appveyor.com/account/puppetlabs/projects/new) page.        Click on Add.
      ![Add]({% link /assets/2020-02-19-infrastructure-for-the-gem/add.png %})
   3. Enable dependabot for the new repo created. Open a [dependabot](https://app.dependabot.com/accounts/puppetlabs/) page.
      Click on + , select the repo and provide access.
      ![+]({% link /assets/2020-02-19-infrastructure-for-the-gem/dependabotadd.png %})

      ![repo created]({% link /assets/2020-02-19-infrastructure-for-the-gem/dependabot.png %})


## Wrapping Up

Hooray! We've created the infrastructure for our gem !
