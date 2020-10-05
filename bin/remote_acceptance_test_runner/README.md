# Acceptance Test Remote Runner

## Introduction

This is a script that will allow you to run Litmus acceptance tests on an Ubuntu 18.04 image provisioned via ABS.
This became useful as there are times when network connectivity between Belfast -> Portland can be temperamental and have a knock on effect to the reliability of release check test runs.
These test runs can take anywhere between 15-90 minutes, so a lot of time can be wasted re-running tests purely because adverse network reliability was a factor.


## Prerequisites

You will need to have the [`vmfloaty`][vmfloaty-gem] gem installed and your [`.fog` file configured][fog-file-config] with your ABS authentication token.
Basically, everything you would nomrally have set up if you are an IAC team member and you release modules! :smiley:

## How to use it

You will still provision hosts on ABS locally using the following rake task from within the module:

```shell script
bundle exec rake 'litmus:provision_list[key]'
```

After this has been completed, run the `remote_runner.rb` script to copy the module directory (including the `inventory.yaml`) to an Ubuntu 18.04 host running in the `delivery.puppetlabs.net` subnet:

```shell script
bundle install
ruby remote_runner.rb -r /path/to/module_directory
```

This will:
- Grab an Ubuntu 18.04 host via ABS to act as a runner
- Prep the host to be able to run Litmus acceptance tests
- Copy the module directory specified in `-r` to this host
- Kick off tests in a [`screen`][gnu-screen] session, which will log to `screenlog.0`

The tests will run in this [`screen`][gnu-screen] session until complete.
You can attach to the session at any time by logging on to the Ubuntu 18.04 host and running `screen -x`.
The [`screen`][gnu-screen] session will terminate when the Litmus acceptance tests have, but, the log file will persist in `screenlog.0` to review at your own leisure (_or before the Ubuntu 18.04 host expires from ABS!_)

### Flags / Options

- `-r`: The repository you wish to copy up to the remote host (_required_)
- `-h`: An Ubuntu 18.04 host you have already provisioned and wish to use as the the runner - if not specified, one will be provisioned for you
- `-v`: Verbose logging
- `-p`: Puppet agent version to install on provisioned hosts - defaults to `6`
- `-b`: Branch to use - defaults to `release`

## Post execution requirements

- You still need to tear down the hosts you provisioned for the module tests
- You will also need to hand back the Ubuntu 18.04 runner host to ABS (see `floaty delete --help`)

## Ubuntu 18.04?

This is what I tested - you are free to get it working on another host, if you so wish.

[vmfloaty-gem]:     https://github.com/puppetlabs/vmfloaty
[fog-file-config]:  https://github.com/puppetlabs/provision#abs
[gnu-screen]:       https://www.gnu.org/software/screen/screen.html
