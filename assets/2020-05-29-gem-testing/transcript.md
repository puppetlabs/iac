Pdksync tool is extended with the new feature to update the Gemfile which helps us to perform Gem testing.

Here we will taking litmus gem as an example since we frequently perform release for this gem.

So lets start with the demo.

First we decide on the list of modules that we need to test prior to the release of litmus gem.

Lets open the managed_modules.yml and select the modules.

Execute the following commands to clone the repos which will be involved in gem testing using the rake task clone_managed_modules.

`bundle exec rake git:clone_managed_modules`

Lets go to the folder and verify if modules are cloned successfully.

Lets update the gemfile across all the selected modules using the rake task gem_file_update.

User is given new rake tasks to update SHA/Version/Branch or line in the Gemfile.

This rake task also performs error validations if any of the parameters are invalid.
For example if the branch is invalid or if the sha is invalid etc.

Lets go back to the demo.

Lets try out an example for invalid branch.

`bundle exec rake 'pdksync:gem_file_update['puppet_litmus', '', '', '', '', '', 'master', 'invalid']'`

Here you can see the error message branch is invalid.

Now Lets update the gemfile across all the selected modules.

This rake task will add the following line to the gemfile which we use frequently to test litmus gem against master branch prior to the release.

`bundle exec rake 'pdksync:gem_file_update["puppet_litmus", "gem '\'puppet_litmus\''\, git: '\'https://github.com/puppetlabs/puppet_litmus.git\''\, branch: '\'master\''\, require: false\, platforms: [:ruby\, :mswin\, :mingw\, :x64_mingw] if ENV['\'PUPPET_GEM_VERSION\''].nil? or ENV['\'PUPPET_GEM_VERSION\''] !~ %r{ 5}"]'`

Now lets go to the module directory and verify the gemfile is updated successfully.

All good.

Lets commit the changes by specifying the branch name and commit message.

`bundle exec rake 'git:create_commit[testinggemdemo, (maint) Gem Testing]'`

Now Lets push the changes and create the PR.

`bundle exec rake 'git:push'`
`bundle exec rake 'git:create_pr["puppet_litmus x.y.z Release testing"]'`

You can see the PRs are created successfully.
Lets open the PR and verify


So this is the accounts PR. You can see the CI Jobs are still running.
and also the changes to the gemfile.

Same for the apt module.,the CI jobs are still running and also the changes to the gemfile.

So Lets wait for the PR to run all CI jobs

Accounts PR is green and Apt PR is green.
All CI jobs are running clean and gem is ready for the release.

By using this the tool it help us to reduce the regression on any module due to the gem release since sufficient testing is completed prior to the release.

Thats all about Gem testing.