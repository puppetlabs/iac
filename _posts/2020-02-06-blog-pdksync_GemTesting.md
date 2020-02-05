---
layout: post
title: "Gem Testing with pdksync"
date: 2020-02-03 14:00:00
author: sheenaajay
published: false
categories:
  - testing
  - walkthrough
tags:
  - pdksync
  - modules
  - gem testing
---

# Introduction

pdksync enables you to do a lot more than just pdk update against a set of defined modules. In this blog post we will be going through single or multi gem testing features of pdksync.

## Setup

Download a fork of the repo, which can be found here [pdksync](https://github.com/puppetlabs/pdksync). Or you can install via Rubygems, it can be found here [pdksync](https://rubygems.org/gems/pdksync).
Install gems by using `bundle install`.
Ensure you have a GITHUB_TOKEN set in your env, if you don't add it by running `export GITHUB_TOKEN=<your github token>`, this is required for authentication.
Important - Manually edit the list contained in 'managed_modules.yml' to ensure it is correct with the modules you wish to update. Please note this is critical as this tool will create PRs against the repos included in this list - you don't want to run this against a module you aren't familiar with. Do not proceed to the next step without doing this.
Run the rake task by using `bundle exec rake pdksync`.

## Part One: Functionality Single Gem Testing

pdksync tool comes with the feature to update the Gemfile. Puppet provides a lot of useful gems to access and manage their functionality between modules. This functionality will help user to perform gem testing prior to release. User is given new rake tasks to update SHA/Version/Branch/line in the Gemfile. Then the changes can be committed, PR can be created which will run the acceptance tests in the PR. If all the tests are executing successfully then the user can close the PRS and release the gem.

> #### Note:
>
> It assumes very limited familiarity with the [pdksync](https://github.com/puppetlabs/pdksync) and [pdk](https://puppet.com/blog/keep-your-puppet-modules-up-to-date-pdk/)
>

Run gem_file_update against modules
```shell
pdksync:gem_file_update[[:gem_to_test, :gem_line, :gem_sha_finder, :gem_sha_replacer, :gem_version_finder, :gem_version_replacer, :gem_branch_finder, :gem_branch_replacer]]
```
eg rake to update gem line
```shell
pdksync:gem_file_update['puppet_litmus', "gem 'puppet_litmus'\, git: 'https://github.com/test/puppet_litmus.git'\, branch: 'testbranch'"]'
```
eg rake to update sha
```shell
pdksync:gem_file_update['puppet_litmus', '', '20ee04ba1234e9e83eb2ffb5056e23d641c7a018', '20ee04ba1234e9e83eb2ffb5056e23d641c7a31']
```
eg rake to update version
```shell
pdksync:gem_file_update['puppet_litmus', '', '', '', "= 0.9.0", "<= 0.10.0", '', '']
```
eg rake to update branch
```shell
pdksync:gem_file_update['puppet_litmus', '', '', '', '', '', 'testbranch', 'testbranches']
```

Below given are the workflows for doing single gem testing with pdksync.

In Workflow 1 we can clone modules, update the gem file, create the commit, push the changes and create the PR using separate rake tasks.
```shell
bundle install --path .bundle/gems/
bundle exec rake git:clone_managed_modules
bundle exec rake 'pdksync:gem_file_update[]'
bundle exec rake 'git:create_commit[]'
bundle exec rake 'git:push'
bundle exec rake 'git:create_pr[]'
```

In Workflow 2 we can clone modules, update the gem file, create the commit, push the changes and create the PR using single rake task
```
Using single rake job
bundle install --path .bundle/gems/
bundle exec rake 'gem_testing[]'
```

Once the verified gem is released we can use pdksync to update the the new version of gem released in the  .sync.yaml file.

## Part Two: Functionality Multi Gem Testing

pdksync tool is extended with the feature to perform multi gem testing (`puppet-module-gems`). This functionality will identify the current version and bump the version by one. Then it will build and push the gems to gemfury account. Export the GEMFURY_TOKEN to use this rake task.

 ```shell
   export GEMFURY_TOKEN=<access_token>
   ```

Run the following commands to check that everything is working as expected:

```shell
bundle install --path .bundle/gems/
bundle exec rake -T
bundle exec rake 'git:clone_gem['puppet-module-gems']'
```

Run multigem_file_update against modules
Clone gem
git:clone_gem[:gem_name]
```shell
rake 'git:clone_gem['puppet-module-gems']'
```

Build and Push new gems built to the gemfury account for testing
pdksync:multi_gem_testing[:gem_name, :version_file, :build_gem, :gem_path, :gemfury_user_name]
```shell
pdksync:multi_gem_testing['puppet-module-gems','config/info.yml','exe/build-gems.rb','pkg','gem_tester']
```

Update Gemfile of the modules with the new gem should be pushed to Gemfury.
pdksync:multigem_file_update[:gem_name, :gemfury_username]
```shell
pdksync:multigem_file_update['puppet-module','tester']
```

Below given is the workflows for doing multi gem testing with pdksync.

In this workflow we can clone gems, update the version, build the gem, push the changes to gemfury and update the gem file of the required modules with the latest gem updated in the fury. Then we can create PR or run tests locally or run tests through jenkins to verify the module test results.

```shell
bundle install --path .bundle/gems/
bundle exec rake 'git:clone_gem['puppet-module-gems']'
bundle exec rake 'pdksync:multi_gem_testing[]'
bundle exec rake 'pdksync:multigem_file_update[]'

## Wrapping Up

These are the steps that we can follow to perform single or multi gem testing using pdksync.
