---
layout: post
title:  "Developing a PowerShell-Dependent Puppet Type & Provider"
published: false
categories:
  - development
  - walkthrough
tags:
  - PowerShell
  - modules
  - Windows
  - types and providers
---

> Part One: Basic Functionality

Sometimes when managing resources with Puppet you come across a use case that you might initially solve via a few custom `exec` resources--
but though this solves your problem in the short run, it doesn't scale well and leaves a lot of problems around managing reporting and idempotency.
At a certain point, it becomes advisable to write a type and provider--for more information, check out our [hands on lab](https://learn.puppet.com/course/getting-started-with-the-puppet-resource-api)!

For the purposes of this walkthrough, we're going to create a resource API compliant type and provider to manage SMB shares on Windows.
What we want to be able to do is put something like this into a manifest, thereby creating a share on the machine:

```puppet
smb_share { 'basic_example':
  ensure => present,
  path => 'C:\Path\To\A\Share',
}
```

Before we can dig into the meat of writing the type and provider though, we've got some standardized setup to do.

> #### Note:
>
> This walkthrough assumes you have the  following software installed:
>
> - The [Puppet Development Kit](https://puppet.com/docs/pdk/1.x/pdk_install.html)
> - [Visual Studio Code](https://code.visualstudio.com/download) with the [Puppet extension](https://lingua-pupuli.github.io/)
>
> It also assumes very limited familiarity with the [Resource API Walkthrough](https://puppet.com/blog/introducing-puppet-resource-api/).

1. Open a PowerShell console, perform the rest of these actions from there.
1. `pdk new module smb`
   ```text
   pdk (INFO): PDK collects anonymous usage information to help us understand how
            it is being used and make decisions on how to improve it. You can
            find out more about what data we collect and how it is used in the
            PDK documentation at
            https://puppet.com/docs/pdk/latest/pdk_install.html.

   [Q 1/1] Do you consent to the collection of anonymous PDK usage information?
   --> Yes

   pdk (INFO): You can opt in or out of the usage data collection at any time by
               editing the analytics configuration file at
               C:\Users\vagrant\AppData\Local/puppet/analytics.yml and changing
               the 'disabled' value.

   pdk (INFO): Creating new module: smb

   We need to create the metadata.json file for this module, so we're going to ask you 4 questions.
   If the question is not applicable to this module, accept the default option shown after each question. You can modify any answers at any time by manually updating the  metadata.json file.

   [Q 1/4] If you have a Puppet Forge username, add it here.
   We can use this to upload your module to the Forge when it's complete.
   --> michaeltlombardi

   [Q 2/4] Who wrote this module?
   This is used to credit the module's author.
   --> michaeltlombardi

   [Q 3/4] What license does this module code fall under?
   This should be an identifier from https://spdx.org/licenses/. Common values are "Apache-2.0", "MIT", or "proprietary".
   --> Apache-2.0

   [Q 4/4] What operating systems does this module support?
   Use the up and down keys to move between the choices, space to select and enter to continue.
   --> Windows

   Metadata will be generated based on this information, continue? Yes
   pdk (INFO): Module 'smb' generated at path 'C:/Users/vagrant/smb', from template 'file:///C:/Program Files/Puppet Labs/DevelopmentKit/share/cache/pdk-templates.git'.
   pdk (INFO): In your module directory, add classes with the 'pdk new class' command.
   ```
1. `cd smb ; code .`
1. Update dependencies by editing the following files in VSCode:
    - `.fixtures.yml`:
      ```yaml
      fixtures:
        forge_modules:
          pwshlib: "puppetlabs/pwshlib"

      ```
    - `.sync.yml` (you'll need to create this file):
      ```yaml
      Gemfile:
        optional:
          ':development':
            - gem: 'ruby-pwsh'
            - gem: 'puppet-resource_api'

      spec/spec_helper.rb:
        mock_with: ':rspec'

      ```
    - `metadata.json`:
      ```json
      "dependencies": [
        {
          "name": "puppetlabs/pwshlib",
          "version_requirement": ">= 0.4.0 < 2.0.0"
        }
      ],
      ```
1. `pdk update`
    ```text
    pdk (INFO): Updating michaeltlombardi-smb using the default template, from tags/1.15.0 to 1.15.0

    ----------Files to be modified----------
    Gemfile
    spec/spec_helper.rb

    ----------------------------------------

    You can find a report of differences in update_report.txt.

    Do you want to continue and make these changes to your module? Yes
    [*] Installing missing Gemfile dependencies.

    ------------Update completed------------

    2 files modified.
    ```
1. `pdk new provider smb_share`
   ```text
   pdk (INFO): Creating 'C:/Users/vagrant/smb/lib/puppet/provider/smb_share/smb_share.rb' from template.
   pdk (INFO): Creating 'C:/Users/vagrant/smb/lib/puppet/type/smb_share.rb' from template.
   pdk (INFO): Creating 'C:/Users/vagrant/smb/spec/unit/puppet/provider/smb_share/smb_share_spec.rb' from template.
   pdk (INFO): Creating 'C:/Users/vagrant/smb/spec/unit/puppet/type/smb_share_spec.rb' from template.
   ```
1. `pdk bundle exec rake spec_prep`
   ```text
   pdk (INFO): Using Ruby 2.5.7
   pdk (INFO): Using Puppet 6.11.1
   I, [2020-01-17T13:18:26.702383 #1696]  INFO -- : Creating symlink from spec/fixtures/modules/smb to C:\Users\vagrant\smb
   Notice: Preparing to install into C:/Users/vagrant/smb/spec/fixtures/modules ...
   Notice: Downloading from https://forgeapi.puppet.com ...
   Notice: Installing -- do not interrupt ...
   C:/Users/vagrant/smb/spec/fixtures/modules
   └── puppetlabs-pwshlib (v0.4.0)
   ```

Now we're ready to really dig into writing our type and provider.

## Defining the Initial Type

The type file, `lib/puppet/type/smb_share.rb`, requires a little editing.
We'll be adding some documentation and filling out the different properties of the SMB share we want to manage.

Two properties are already provided for us in the `attributes` key: `ensure` and `name`.
In order to get a minimum viable implementation for our share, we'll need to implement `path` as well.
Add the following hash to the list of attributes in the type file:

```ruby
path: {
  type: 'String',
  desc: 'The path of the SMB share.',
},
```

This property is fairly simple to define - the path to the SMB share will always be a string.
For now, this is all we need to add to be able to implement the basic provider functionality.

> #### Note:
>
> We did not update the rest of the docs here - we will return to the documentation aspect in a future blog post when we expand the properties this type manages.

## Writing the Prototype Provider

The next file we need to look at is the provider, `lib/puppet/provider/smb_share.rb`, which is where most of the heavy lifting will happen.

<!-- First, at the top of the file _just_ inside the provider class definition (after line 4), we need to confine this provider to only run on Windows machines when the ruby-pwsh library is available:

```ruby
class Puppet::Provider::SmbShare::SmbShare < Puppet::ResourceApi::SimpleProvider
  confine :operatingsystem => :windows
  confine :feature => :pwshlib
``` -->

First, add a requires statement to the top of the file to ensure we have access to the PowerShell gem:

```ruby
require 'ruby-pwsh'
```

Next, inside the provider class definition, we need to add two new methods which make using the PowerShell gem's manager easier:

```ruby
# Returns a new instance of the PowerShell manager if one does not exist or is dead,
# otherwise returns the existing usable instance for performance reasons.
def ps_manager
  debug_output = Puppet::Util::Log.level == :debug
  Pwsh::Manager.instance(Pwsh::Manager.powershell_path, Pwsh::Manager.powershell_args, debug: debug_output)
end

# Wraps executions for the PowerShell Manager to do some basic error raising in Puppet.
def invoke_command(command)
  result = ps_manager.execute(command)
  raise result[:errormessage] unless result[:exitcode].zero?
  result
end
```

Now, we're ready to start implementing some functionality.

### Getting the Shares

The information we need to retrieve about our shares was defined in our type file; right now, we need the name of the share, the path to the share, and whether or not it exists. To find out this information though, we're going to need to do a little PowerShell:

```powershell
Get-SMBShare -ErrorAction Stop |
  Select-Object -Property Name, Path
```

Which in Ruby, using the PowerShell manager, would be:

```ruby
command = [
  'Get-SMBShare -ErrorAction Stop',
  'Select-Object -Property Name, Path',
].join(' | ')
invoke_command(command)
```

Here, we declare the commands in a Ruby array and join them with a `|`.
This makes it easier for us to modify the commands we need to run without having to manage a huge string that's hard to read.
This will return all of the SMB shares on the machine, but there's a couple problems:

1. We need to return JSON for easy translation to usable objects in ruby
1. We need to add a property for Ensure - right now, we're missing that third property.
   We could add it either to the `Select-Object statement` (as a name-expression hash with a static expression of `'present'`) or to ruby afterwards.
   For the purpose of this example, we'll just add it to the Select-Object statement.

```ruby
properties = [
  'Name',
  'Path',
  Pwsh::Util.custom_powershell_property('ensure', '"present"'),
].join(', ')

command = [
  'Get-SMBShare -ErrorAction Stop',
  "Select-Object -Property #{properties}",
  'ConvertTo-Json',
].join(' | ')

result = invoke_command(command)
Pwsh::Util.symbolize_hash_keys(Pwsh::Util.snake_case_hash_keys(JSON.parse(result[:stdout])))
```

Notice we added a new `properties` variable, in which we declare the properties we want to return on the SMB share and join them with a comma, which is how they'll need to be passed to `Select-Object`.
This lets us decouple the properties to select from the command itself and will make things more readable as we add more properties to manage.

We're also using a helper method (`custom_powershell_property`) from the PowerShell gem to create a PowerShell hash representing a custom object property.
In this case, it will be:

```powershell
@{Name = 'ensure'; Expression = {"present"}}
```

It's important to note that the string passed as the expression is *exactly* what will be placed in the expression script block;
without the internal quotes, PowerShell would try to run a command called `present` in the scriptlock and fail.

For our command, the major changes are that we interpolate the properties list for Select-Object and ensure we convert our output to JSON before passing it back to Ruby.

Finally, we want to capture the output of our command invocation so we can return the results.
The last line of this command is doing a _bunch_ of heavy lifting, so let's break it down:

- `result[:stdout]` - this is what we returned from our command pipeline - in this case, we told PowerShell to return us the SMB object with the properties we specified as a JSON string.
- `JSON.parse()` - this is the Ruby method for converting from a JSON string to a Ruby hash, loosely analogous to `ConvertFrom-Json` in PowerShell.
- `Pwsh::Util.symbolize_hash_keys()` - this is a helper method for converting a Ruby hash's keys from strings `"key_name"` to symbols `:key_name` which is necessary for returning values in a way that will neatly compare with what our type and provider are expecting.
- `Pwsh::Util.snake_case_hash_keys()` - this is another helper method, this one converting a Ruby hash's keys to a `snake_case` from `PascalCase`, `camelCase`, or `kebab-case`.
  As with `symbolize_hash_keys()`, this method helps ensure we're returning a hash that our type/provider can neatly compare to.

So, if we put this all together for a ruby method to use in our provider, we'll have:

```ruby
def get_smb_share # rubocop:disable Style/AccessorMethodName
  properties = [
    'Name',
    'Path',
    Pwsh::Util.custom_powershell_property('ensure', '"present"'),
  ].join(', ')

  command = [
    'Get-SMBShare -ErrorAction Stop',
    "Select-Object -Property #{properties}",
    'ConvertTo-Json',
  ].join(' | ')

  result = invoke_command(command)

  Pwsh::Util.symbolize_hash_keys(Pwsh::Util.snake_case_hash_keys(JSON.parse(result[:stdout])))
end
```

> Note: We added a comment to tell rubocop, a tool for enforcing ruby style guidelines, to ignore this method's name.
> In Ruby, methods like `get_smb_share` are normally just `smb_share` - in this case, it will help PowerShell folx better understand what's happening, so it makes sense to ignore the rule.

For now, this is good enough, so we'll update the `get` method in our provider to just call `get_smb_share`.

```ruby
def get(context)
  context.debug('Returning discovered SMB shares')
  get_smb_share
end
```

We can test that our code is working by running [puppet resource](https://puppet.com/docs/puppet/latest/man/resource.html).

> Note that we're using the PDK bundle for development purposes;
> We're also specifying the modulepath to a special folder in our repository;
> This was created in the set up stage when you ran `pdk bundle exec rake spec_prep`

```powershell
pdk bundle exec puppet resource smb_share --modulepath ./spec/fixtures/modules/
```

That should give you back information that looks like this:

```text
pdk (INFO): Using Ruby 2.5.7
pdk (INFO): Using Puppet 6.11.1
smb_share { 'ADMIN$':
  path => 'C:\Windows',
  ensure => 'present',
}
smb_share { 'C$':
  path => 'C:\',
  ensure => 'present',
}
smb_share { 'IPC$':
  path => '',
  ensure => 'present',
}
```

Later, when we start adding to our use case (managing, say, permissions) we will expand on this method.

### Creating a Share

Retrieving resources from a machine is useful, but not as useful as creating them, so let's enable that functionality next.

We'll create a `new_smb_share()` method that passes along the arguments we specified to the `New-SmbShare` cmdlet:

```ruby
def new_smb_share(arguments)
  arguments.reject! { |k, _v| k.to_s == 'Ensure' }
  command = [
    "$Arguments = #{Pwsh::Util.format_powershell_value(arguments)}",
    'New-SmbShare @Arguments -ErrorAction Stop',
  ].join(' ; ')
  invoke_command(command)
end
```

The first thing we do is remove `Ensure` from the hash of arguments passed to this method if it exists -- since we're sending that hash to PowerShell for splatting and `New-SmbShare` will have **no** idea what to do with an `Ensure` parameter, we need to make sure it gets removed.
The `reject` method used here iterates over the `arguments` hash for each key-value pair and filters out any pairs which match the condition; in this case, if the key is `Ensure`.
In PowerShell, this is loosely analogous to doing something like:

```powershell
$Arguments = $Should
$Arguments.Remove('Ensure')
```

In the command array we can rely on another utility from the PowerShell gem: `format_powershell_vallue` will convert a Ruby object into an appropriate PowerShell representation.
In this case, arguments is a hash and so will be represented as something like:

```powershell
@{KeyName = 'value'; NextKey = 1}
```

We then rely on the hash table we stored in `$Arguments` to enable us to do some [splatting](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_splatting?view=powershell-7).
Finally, we join these commands with a semi-colon--remember, each invocation against the Manager does *not* share state with prior ones!

Okay, great, but how do we pass the correct arguments to `new_smb_share`?
We can do that with a little munging in the `create` method:

```ruby
def create(context, name, should)
  context.notice("Creating '#{name}' with #{should.inspect}")
  arguments = Pwsh::Util.pascal_case_hash_keys(should)
  new_smb_share(arguments)
end

def new_smb_share(arguments)
  arguments.reject! { |k, _v| k.to_s == 'Ensure' }
  command = [
    "$Arguments = #{Pwsh::Util.format_powershell_value(arguments)}",
    'New-SmbShare @Arguments -ErrorAction Stop',
  ].join(' ; ')
  invoke_command(command)
end
```

Note that the create and update methods both specify the `name` and something called `should`; these are automatically handled and passed by Puppet during a run.
The `should` variable is a Ruby hash representing the parameters specified for a given resource.
So if someone defined a manifest, it would include all of the properties and parameters for the specified SMB share included in that resource declaration.

The notice will show up in the logs of a run, explaining what share is being created and specifying the parameters.

We then pass the arguments hash to a utility function, `pascal_case_hash_keys` converts them from the snake_case Ruby prefers to the PascalCase that PowerShell normally prefers;
though our current parameters are all single words, this will help us in the future should we want to specify something like the concurrent user limit on the SMB share.

Once we've munged our arguments to be what we need we can pass them to our helper function, `new_smb_share`.

We can test this code by adding a manifest to our examples folder.
Create a new file, `examples/basic.pp`, and paste the following into it:

```puppet
$share_path = "C:\\smb_share_folder_example_a"

file { $share_path:
  ensure => 'directory'
}

smb_share { 'basic_example':
  ensure  => present,
  path    => $share_path,
  require => File[$share_path]
}

```

> Note that we have to ensure that the directory we will use as the path for the SMB share--if it doesn't exist, the command will fail.
>
> Also note that VSCode will present you with a pop up in the bottom right corner asking if you want to add an extension for `.pp` files - you _absolutely_ do want to add the [Puppet Extension for VSCode](https://puppet-vscode.github.io/) if you're not already using it; it includes dozens of helpful features to make writing and maintaining Puppet code easier!

And then we'll run a command _with administrative priveleges_ (needed to create the SMB share) to execute this manifest:

```powershell
pdk bundle exec puppet apply ./examples/basic.pp --modulepath ./spec/fixtures/modules/
```

Which should produce output like this:

```text
pdk (INFO): Using Ruby 2.5.7
pdk (INFO): Using Puppet 6.11.1
Notice: Compiled catalog for .mshome.net in environment production in 0.21 seconds
Notice: /Stage[main]/Main/File[C:\smb_share_folder_example_a]/ensure: created
Notice: /Stage[main]/Main/Smb_share[basic_example]/ensure: defined 'ensure' as 'present'
Notice: smb_share[basic_example]: Creating: Creating 'basic_example' with {:name=>"basic_example", :ensure=>"present", :path=>"C:\\smb_share_folder_example_a"}
Notice: smb_share[basic_example]: Creating: Finished in 1.23 seconds
Notice: Applied catalog in 9.22 seconds
```

Awesome! We've created an SMB share!
We can even verify this by rerunning the `puppet resource` command from earlier:

```powershell
pdk bundle exec puppet resource smb_share --modulepath ./spec/fixtures/modules/
```

```text
pdk (INFO): Using Ruby 2.5.7
pdk (INFO): Using Puppet 6.11.1
smb_share { 'ADMIN$':
  path => 'C:\Windows',
  ensure => 'present',
}
smb_share { 'C$':
  path => 'C:\',
  ensure => 'present',
}
smb_share { 'IPC$':
  path => '',
  ensure => 'present',
}
smb_share { 'basic_example':
  path => 'C:\smb_share_folder_example_a',
  ensure => 'present',
}
```

### Removing a Share

Now, let's figure out how to remove an SMB share.
Luckily, removing a share in PowerShell is straightforward:

```powershell
Remove-SmbShare -Name 'name of the share' -Force
```

So we can write this in ruby leveraging the PowerShell manager:

```ruby
def remove_smb_share(name)
  command = "Remove-SmbShare -Name '#{name}' -Force -ErrorAction Stop"
  invoke_command(command)
end
```

And call it from the `delete()` method:

```ruby
def delete(context, name)
  context.notice("Deleting '#{name}'")
  remove_smb_share(name)
end
```

Let's test our newly updated provider!
We can use `puppet resource` to change the property of a managed resource--in this case, we want to use `ensure=absent` to remove the SMB share.
Remember, this needs to be run _with_ administrative priveleges.

```powershell
pdk bundle exec puppet resource smb_share basic_example ensure=absent --modulepath ./spec/fixtures/modules
```

```text
pdk (INFO): Using Ruby 2.5.7
pdk (INFO): Using Puppet 6.11.1
Notice: /Smb_share[basic_example]/ensure: undefined 'ensure' from 'present'
Notice: smb_share[basic_example]: Deleting: Deleting 'basic_example'
Notice: smb_share[basic_example]: Deleting: Finished in 0.804902 seconds
smb_share { 'basic_example':
  ensure => 'absent',
}
```

You should see a notification that the share has been removed.
Go ahead and rerun the manifest to recreate the share and prepare for our next step:

```powershell
pdk bundle exec puppet apply ./examples/basic.pp --modulepath ./spec/fixtures/modules/
```

### Updating a Share

While there are _better_ ways to manage updating SMB shares, the _easiest_ is to delete it and recreate it with the appropriate parameters passed through--in fact, this is _necessary_ if you need to change the path of an SMB share.

Luckily, we've already written the methods for creating and deleting the share so all we need to do is fill in the `update` method:

```ruby
def update(context, name, should)
  context.notice("Updating '#{name}' with #{should.inspect}")
  arguments = Pwsh::Util.pascal_case_hash_keys(should)
  remove_smb_share(name)
  new_smb_share(arguments)
end
```

Let's modify the share path variable to end in `b` instead of `a`; this will cause Puppet to create a new folder, remove the original SMB share, and create a new one that uses the correct folder.

```puppet
$share_path = "C:\\smb_share_folder_example_b"

file { $share_path:
  ensure => 'directory'
}

smb_share { 'basic_example':
  ensure => present,
  path => $share_path,
  require => File[$share_path]
}
```

And then rerun the manifest:

```powershell
pdk bundle exec puppet apply ./examples/basic.pp --modulepath ./spec/fixtures/modules/
```

You should see a line like this in your Puppet output:

```text
pdk (INFO): Using Ruby 2.5.7
pdk (INFO): Using Puppet 6.11.1
Notice: Compiled catalog for .mshome.net in environment production in 0.21 seconds
Notice: /Stage[main]/Main/File[C:\smb_share_folder_example_b]/ensure: created
Notice: /Stage[main]/Main/Smb_share[basic_example]/path: path changed 'C:\smb_share_folder_example_a' to 'C:\smb_share_folder_example_b'
Notice: smb_share[basic_example]: Updating: Updating 'basic_example' with {:name=>"basic_example", :ensure=>"present", :path=>"C:\\smb_share_folder_example_b"}
Notice: smb_share[basic_example]: Updating: Finished in 1.67 seconds
Notice: Applied catalog in 9.23 seconds
```

## Wrapping Up

Hooray! We've written a functional implementation of a type and provider for an SMB Share using the PowerShell gem and manager!
Next time, we're going to expand on our start here to make sure we are able to fully manage the properties and access of an SMB share, so stay tuned!
