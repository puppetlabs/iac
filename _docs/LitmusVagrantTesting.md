---
layout: page
title: Testing Puppet Modules with Litmus and Vagrant
---

## Testing Puppet Modules with Litmus and Vagrant

### The Setup

For this demo I'm gonna run through the entire process from start to finish - I hope that you find it useful.
To start, the first thing that you need to do is clone down the module that you want to test; in this case we'll be using `puppetlabs-scheduled_task`. This can easily be accomplished with a simple command:

```bash
git clone https://github.com/puppetlabs/puppetlabs-scheduled_task.git
```

Now that you have the module cloned down, simply run the below command to set up the environment:

```bash
bundle install --path .bundle/gems/
```

### Provisioning the Machine

With the environment setup it is time to provision the machine. Rather than spin up the vagrant machine directly, we can use Litmus as an intermediary to do it for us.

```bash
bundle exec rake 'litmus:provision[vagrant, gusztavvargadr/windows-server]'
```

After running the command above, the output should look similar to this:

![Litmus Vagrant Testing - provisioning the machine](Vagrant%20Provision.png)

The example above uses the [gusztavvargadr/windows-server](https://app.vagrantup.com/gusztavvargadr/boxes/windows-server) vagrant box.

If you are testing against multiple different OSs then you can also utilise the `provision_list` command, which alows you to provision an entire suite of machines from pre-set lists found within the `provision.yml` file.

With the machine provisioned, first doublecheck that you have root/administrator privileges for the box and then it's a simple matter of running the `install_agent` and `install_module` commands and you will be setup and ready to go. With `install_agent` you can run the command as it is to install a default version of the agent or you can specify puppet 5 or 6 specificilly.

```bash
# Install the puppet agent
bundle exec rake 'litmus:install_agent[puppet6]'

# Installl the module
bundle exec rake 'litmus:install_module'
```

After running the commands above, the output should look similar to this:

![Litmus Vagrant Testing - installing the agent and the module](Agent%20Module%20Install.png)

### Running the Tests

Now that the machine is fully setup it is time to run the tests.

This can be done in several ways, either through Litmus or through rspec.

We'll start with the command `bundle exec rake litmus:acceptance:parallel`.

When this command is given, Litmus will retrieve each machine that has been setup during the provision step and run the test suite against them simultaneously. This is an excellent function for testing prior to a release or merge as it helps achieve full coverage in a fraction of the time that it would normally take.

The next command that can be given is `bundle exec rake litmus:acceptance:127.0.0.1:55985`

This command will run the tests only against the machine whose name was provided, allowing you to run your test suite against a specific OS. This can be useful when making a change specific to a certain OS or when re-running previously failed tests after applying a quick bug fix.

The final command that we wll be covering is `TARGET_HOST=127.0.0.1:55985 bundle exec rspec spec/acceptance/should_create_task_spec.rb`.

Rather than calling on Litmus this instead utilises the older, but still functional, rspec command. This allows you to specify specific test files to be run rather than the entire suite as well as allowing more detailed debugs to be returned.

### Additional Parameters

Aside from the basic usage shown above there are a few additional parameters than can be passed through as environment variables during the provision command, allowing some extended functionality.

These include several basic parameters that can set up the provider of the vagrant box, `provider`, or even enhance the boxes performance by increasing the resources it can draw on, `cpus` and `memory`.

Another parameter is `enable_synced_folders`, a feature that is disabled by default but when enabled will allow you to share folders between the host and the vagrant, allowing you to more easily pass information between the two.

Finaly there is also a collection of parameters that can be set only against a Windows host, which when combined allow the utilization of Hyper-V Vagrant boxes and all that that entails: `hyperv_vswitch`, `hyperv_smb_username` and `hyperv_smb_password`.

### Troubleshooting

Certain Vagrant boxes do not allow ssh root logins, that is why the _vagrant_ user as part of the sudoers group is used to execute privileged commands. As the Puppet agent installation requires sudo privileges, there are some cases where the secure_path configuration for the puppet binary path is not set correctly, leading to errors when attempting to execute puppet commands on the system. If you encounter these errors, a quick fix is to use the `provision::fix_secure_path` Bolt Task. This will update the secure_path configuration and solve any related errors you may be seeing.

```bash
bundle exec bolt --modulepath /Users/{Your Name}/workspace/git/ task run provision::fix_secure_path path=/opt/puppetlabs/bin -i inventory.yaml -t ssh_nodes
```

### Wrapup

Well that's it, everything you need to know to get started with a vagrant test suite! I hope that you all find it helpful going forward and can all learn to experience the joys of Vagrant.
