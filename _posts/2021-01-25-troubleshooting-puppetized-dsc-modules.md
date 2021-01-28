---
layout: post
title: "Troubleshooting Puppetized DSC Modules"
author: michaeltlombardi
---

Authoring Puppet manifests using the new [Puppetized DSC Resources][dsc-forge] is, like using any other Puppet modules, a few steps and a deploy away for most use cases.
Sometimes you will run into a problem trying to apply a manifest containing one or more Puppetized DSC resources.
What could be causing the problem?

Is it a problem with the builder?
The Puppet representaion of the DSC Resource could not match the API surface, resulting in misgenerated types, enums or method calls.

Could the problem be the DSC Resource itself?
The PowerShell DSC code could not work, which would be hidden underneath the Puppet Ruby exception stacktrace.

What happens if it's Puppet?
There could be an error in the Ruby code that translates the DSC resource back and forth between Puppet and PowerShell, in which case the issue lies in the [`pwshlib`][pwshlib] module.

Somewhere in between?
How do you tell which symptom is which problem?
Where do you begin to troubleshoot this?
This blog post will help you find your way foreward.

## Basic Troubleshooting

The first thing to note is that there's actually a [basic troubleshooting guide for `Puppet.Dsc`][troubleshooting-doc].
That guide covers finding problems like [type errors][type-errors] or [incorrect enums][incorrect-enums] in the module builder, [invocation errors][invocation-errors] during a Puppet run, and problems with the tanslation layer in `pwslib`. There is a lot of good information there, so we won't cover those areas again here.

The guide also covers running Puppet in **debug** mode, which you will need to know about for the next couple sections.
In short, if you append the `--debug` flag to the end of your Puppet invocation, you'll get a _ton_ of additional information out of the run.
Please make sure to read the guide to ensure you have a reference point before we proceed here.

## Advanced Troubleshooting

So, you have a Puppet manifest with one or more Puppetized DSC Resource declarations in it.
Things are not working and the basic troublshooting guide didn't solve the problem.

The first place to start is to validate that what you declared in the manifest was translated correctly to the PowerShell DSC code to execute.

### Validating manifests and the PowerShell hash

When you specify a DSC Resource in your Puppet manifest, behind the scenes Puppet converts that into PowerShell code to pass to `Invoke-DscResource`.
In debug mode, you can actually see what Puppet thinks you passed _and_ that generated code.

Lets walk through an example manifest:

```puppet
dsc_psrepository { 'PowerShell Gallery':
  dsc_name               => 'psgAllery',
  dsc_installationpolicy => 'Trusted',
}
```

If we execute Puppet in debug mode, we'll get the following (abreviated) output:

```
Debug: dsc_psrepository[{:name=>"PowerShell Gallery", :dsc_name=>"psgAllery"}]: Updating: Invoking Set Method for '{:name=>"PowerShell Gallery", :dsc_name=>"psgAllery"}' with {:name=>"PowerShell Gallery", :dsc_name=>"psgAllery", :dsc_installationpolicy=>"Trusted"}
... (snipped for brevity)
dsc_psrepository[{:name=>"PowerShell Gallery", :dsc_name=>"psgAllery"}]: Updating: Script:
... (snipped for brevity)
$InvokeParams = @{Name = 'PSRepository'; Method = 'set'; Property = @{name = 'psgAllery'; installationpolicy = 'Trusted'}; ModuleName = @{ModuleName = 'C:/pathToPuppetModules/powershellget/lib/puppet_x/powershellget/dsc_resources/PowerShellGet/PowerShellGet.psd1'; RequiredVersion = '2.2.4.1'}} Try {
  $Result = Invoke-DscResource @InvokeParams
} catch {
  $Response.errormessage   = $_.Exception.Message
  return ($Response | ConvertTo-Json -Compress)
}
```

Breaking this apart, there are several sections of information to pull out.

The first line is Puppet telling us why it's doing what it's doing and with what information it has to execute.
We see its the PowerShell Gallery module, using the Gallery DSC Resource and setting the `installationpolicy` to `Trusted`.

```
Debug: dsc_psrepository[{:name=>"PowerShell Gallery", :dsc_name=>"psgAllery"}]: Updating: Invoking Set Method for '{:name=>"PowerShell Gallery", :dsc_name=>"psgAllery"}' with {:name=>"PowerShell Gallery", :dsc_name=>"psgAllery", :dsc_installationpolicy=>"Trusted"}
```

This can be more easily read as as Ruby hash:

```ruby
{
  :name=>"PowerShell Gallery",
  :dsc_name=>"psgAllery",
  :dsc_installationpolicy=>"Trusted"
}
```

The next part in the log to look at is the invocation parameters.
This is the PowerShell code generated from the section we just examined:

```
$InvokeParams = @{Name = 'PSRepository'; Method = 'set'; Property = @{name = 'psgAllery'; installationpolicy = 'Trusted'}; ModuleName = @{ModuleName = 'C:/pathToPuppetModules/powershellget/lib/puppet_x/powershellget/dsc_resources/PowerShellGet/PowerShellGet.psd1'; RequiredVersion = '2.2.4.1'}}
```

Translating that to a PowerShell hash, we can see a similar represation of the Ruby hash we just looked at.
This is the exact code that will be passed to `Invoke-DscResource` (expanded from one line for clarity; note your `ModuleName` path will be system-specific):

```powershell
$InvokeParams = @{
  Name = 'PSRepository';
  Method = 'get';
  Property = @{ name = 'psgAllery' };
  ModuleName = @{
    ModuleName = 'C:/pathToPuppetModules/powershellget/lib/puppet_x/powershellget/dsc_resources/PowerShellGet/PowerShellGet.psd1';
    RequiredVersion = '2.2.4.1'
  }
}
```

In summary, the debug logs from a Puppet execution run provide us detailed information about how your Puppet manifest was translated into PowerShell code to invoke the DSC Resource.

This leads us neatly into trying to use this information to invoke the DSC Resource outside of Puppet to debug it.

### Invoking without Puppet

After inspecting the debug Puppet logs, we now have the PowerShell code Puppet was executing to try out. We can take that code and move to a test machine and walk through the execution ourselves interactively.

In a PowerShell console with administrator permissions, you'll copy and paste the `$InvokeParams` line from the debug log we pulled out above. Then you'll invoke it using `Invoke-DscRsource`. For example:

```powershell
PS C:\> $InvokeParams = @{
>>   Name = 'PSRepository';
>>   Method = 'get';
>>   Property = @{ name = 'psgAllery' };
>>   ModuleName = @{
>>     ModuleName = 'C:/pathToPuppetModules/powershellget/lib/puppet_x/powershellget/dsc_resources/PowerShellGet/PowerShellGet.psd1';
>>     RequiredVersion = '2.2.4.1'
>>   }
>> }
PS C:\> Invoke-DscResource @InvokeParams -Verbose
```

Now you can evaluate the success/failure of the invocation without involving Puppet at all;
this way you can determine if the values being passed were incorrect or if the DSC Resource itself is misbehaving.

If the code fails after pasting in the `$InvokeParams` block, then there is something wrong with the values or the hash statement.
If something _has_ gone wrong converting the values in your Puppet manifest to the `InvokeParams` hash being passed to `Invoke-DscResource`, please do [file an issue][puppet-dsc-bug-report] with us and we'll be sure to take a look.

If the code fails after invoking `Invoke-DscResource`, then there is likely a problem inside the DSC Resource itself.
If it's an issue with the DSC Resource, hopefully you'll have enough information from the execution to put together a bug report for the upstream PowerShell module and work with that DSC Resouce's authors for a resolution.

#### Invoking DSC Resources with PSCredentials

When your manifest specifies a PSCredential, you'll see one or more lines above the `InvokeParams` declaration, like this (expanded for readability):

```powershell
$febabd4f_19e8_4ed6_a218_188e275ecc05 = New-PSCredential -User apple -Password '#<Sensitive [value redacted]>'
$InvokeParams = @{
  Name = 'PSRepository';
  Method = 'set';
  Property = @{
    name = 'psgAllery';
    installationpolicy = 'Trusted';
    psdscrunascredential = $febabd4f_19e8_4ed6_a218_188e275ecc05
  };
  ModuleName = @{
    ModuleName = 'C:/pathToPuppetModules/powershellget/lib/puppet_x/powershellget/dsc_resources/PowerShellGet/PowerShellGet.psd1';
    RequiredVersion = '2.2.5'
  }
}
```

Note that it is building a credential object from plain text before passing that object to DSC;
the debug logs will strip the password from being returned.

In this case, you will need some of the custom helper code that we snipped for brevity earlier, namely this function:

```powershell
function new-pscredential {
    [CmdletBinding()]
    param (
        [parameter(Mandatory = $true,
            ValueFromPipelineByPropertyName = $true)]
        [string]
        $user,

        [parameter(Mandatory = $true,
            ValueFromPipelineByPropertyName = $true)]
        [string]
        $password
    )

    $secpasswd = ConvertTo-SecureString $password -AsPlainText -Force
    $credentials = New-Object System.Management.Automation.PSCredential ($user, $secpasswd)
    return $credentials
}
```

Make sure to copy that code into your terminal _before_ you try to copy in the invocation variables and _also_ remember to replace `#<Sensitive [value redacted]>` with the appropriate password string.
Alternatively, you could use `Get-Credential` and capture the output of that command to the same variable name from your debug log.

#### Invoking DSC Resources with CIM Instances

Some DSC Resources use nested CIM instances to pass hashes as property values.
In these cases, there's one or more lines above the definition of the `InvokeParams` variable which creates these CIM instances.

```powershell
$b615d113_bb6e_49e4_9776_7e895dfe20c7 = New-CimInstance -ClientOnly -ClassName 'MSFT_KeyValuePair' -Property @{'key' = 'Accept-Language' ; 'value' = 'en-US'}
$InvokeParams = @{
  Name = 'xRemoteFile';
  Method = 'set';
  Property = @{
    destinationpath = 'C:\dsc-xpsdesiredstateconfiguration-9.1.0-0-1.tar.gz';
    headers = [CimInstance[]]@($b615d113_bb6e_49e4_9776_7e895dfe20c7);
    uri = 'https://forge.puppet.com/v3/files/dsc-xpsdesiredstateconfiguration-9.1.0-0-1.tar.gz'
  };
  ModuleName = @{
    ModuleName = 'C:/pathToPuppetModules/xpsdesiredstateconfiguration/lib/puppet_x/xpsdc/dsc_resources/xPSDesiredStateConfiguration/xPSDesiredStateConfiguration.psd1';
    RequiredVersion = '9.1.0'
  }
}
```

This is necessary for DSC to correctly handle the objects, _especially_ if they have a custom CIM instance class specific to the DSC Resource being called.

## Digging deeper with Pry

Sometimes, reading the debug logs doesn't give you enough information about what's going on.
You may need to _pry_ into the parts of Puppet that happen after the execution starts, but before the PowerShell code is executed.

When this is the case, the most powerful thing you can do is learn to interactively debug a Puppet run using a tool called [pry][pry].

[Pry][pry] is a powerful tool for interactively debugging ruby.
Using it with Puppet on Windows is a bit involved but it can be an extremely useful tool in your kit.

First, you'll want to get a functional ruby environment installed _separate_ from the PDK.

> Right now, the PDK does not support prying into a Puppet run due to limitations around native gems.
> If you don't know what this means right now, don't worry too much.
> As you get more used to how Ruby and Puppet works it will make more sense.

You can accomplish this however you want, but make sure there is an installation of both Ruby and the associated Devkit installed when you are done.
We suggest you do this via [Glenn Sarti's `RubyInstaller`][rubyinstaller] PowerShell module:

```powershell
Install-Module RubyInstaller -Scope CurrentUser
# This will kick off an interactive installation of Ruby, including the necessary dependencies
# It relies on Chocolatey (and will install it if needed)
# Strongly suggest installation option G ('2.5.1-2 (x64)') at the time of this writing.
Install-Ruby
```

The next step is to find the module files on disk.
They're _probably_ in a location like this one:

```
C:/ProgramData/PuppetLabs/code/environments/<your environment name>/modules/
```

The actual location will depend on how you configured your Puppet Environments.

Next, you're going to  `Set-Location` to the module you want to debug, like so:

```powershell
Set-Location 'C:/ProgramData/PuppetLabs/code/environments/production/modules/powershellget'
```

> We strongly suggest opening this location in VSCode to make editing a bit easier on yourself.

In any case, you will want to _delete_ the file `Gemfile.lock` in this directory and create a new file, `Gemfile.local`, with the following content:

```ruby
gem 'fuubar'
gem 'pry-byebug'
gem 'pry-stack_explorer'
```

Next, you will run the following commands:

```powershell
# This loads ruby 2.5 for use; if you don't do this, you won't be able to run other commands
uru 2.5
```

```powershell
# This is only necessary after you first install a ruby version; it's a tool to manage ruby dependencies
gem install bundler
```

```powershell
# This will cause bundler install all of the ruby dependencies into the folder you're currently in
bundle config set path '.bundle/gems'
```

```powershell
# This will install all of your ruby dependencies
bundle install
```

```powershell
# This will pull down a copy of the `pwslib` module for use and editing in the rest of your debugging
bundle exec rake spec_prep
```

At this point, you have a functioning Ruby installation and a Puppet Module setup and ready to be debugged.

The next step is to create a new file in the module folder at `examples/test.pp` and put your test manifest code in there.

Now, you can run your test manifest with the following command:

```powershell
bundle exec puppet apply ./examples/test.pp --modulepath ./spec/fixtures/modules
```

If you want to run in debug mode, append `--debug` to the end of that command.
The output you saw during a normal Puppet run will show, and the command runs until it stops at the error you are currently investigating.

Now, you're ready to start adding _pry_ statements to the base provider and digging around.

### Prying into the base provider

For the rest of this section we'll be looking at the `dsc_base_provider.rb` file in the [`puppetlabs-pwshlib`][pwshlib] module, which you can find at `./spec/fixtures/modules/pwshlib/puppet/provider/dsc_base_provider` in the module folder.
That file is the shared provider that _all_ Puppetized DSC Resources rely on.

For this brief tutorial, we're going to pry into `invoke_get_method`, but these techniques apply to all of the included methods you may want to debug.

First, find the method in the provider file (at the time of this writing, that's around line 231):

```ruby
def invoke_get_method(context, name_hash)
  ...
end
```

We're going to add a pry binding to this method.
For the purposes of this tutorial, we're going to add it just before the DSC invocation (around line 241 at the time of this writing):

```ruby
context.debug("Script:\n #{redact_secrets(script_content)}")
# This is the new code we're adding, which will tell ruby to enter a pry debugging session:
require 'pry' ; binding.pry
output = ps_manager.execute(script_content)[:stdout]
```

This will get you an interactive prompt inside the Puppet run:

![Initial execution of pry](/iac/assets/2021-01-25-troubleshooting-puppetized-dsc-modules/initial-pry.png)

You can call `ls` in that context to see what methods and variables are available:

![Demonstrating the `ls` command in pry](/iac/assets/2021-01-25-troubleshooting-puppetized-dsc-modules/ls-pry.png)

You can type the name of one of the variables, such as `name_hash` and hit enter to see what it is set to:

![Printing the `name_hash` variable in pry](/iac/assets/2021-01-25-troubleshooting-puppetized-dsc-modules/name-hash-pry.png)

You can use the `whereami` command to show where you are in the code.
If you pass an integer to this command, it will show you that many lines around your current line.

![Running the `whereami` command in pry](/iac/assets/2021-01-25-troubleshooting-puppetized-dsc-modules/whereami-pry.png)

Next, we'll execute the invocation script and assign it to our own variable (this will take a bit as it's spinning up PowerShell for the first time and running `Invoke-DscResource`):

![Executing independent code in pry](/iac/assets/2021-01-25-troubleshooting-puppetized-dsc-modules/execute-pry.png)

In my case, it looks like we got some data for `stdout`, an exit code of zero, and no errors.

If we call `next`, pry will execute the next line of code.

![Calling the `next` command in pry](/iac/assets/2021-01-25-troubleshooting-puppetized-dsc-modules/next-pry.png)

Note that the marker for our current line has updated to 243.
We can keep using `next` to walk through the code execution, investigating any variables or running any methods for ourselves to see.
I'll keep doing that til we hit line 267, where the code manipulates the output data a little bit:

![Showing the context that will modify the data variable in pry](/iac/assets/2021-01-25-troubleshooting-puppetized-dsc-modules/data-line-pry.png)

Before we run these lines, lets check on some state:

![Printing the initial value of the data variable in pry](/iac/assets/2021-01-25-troubleshooting-puppetized-dsc-modules/data-initial-pry.png)

![Printing the value of the valid_attributes variable in pry](/iac/assets/2021-01-25-troubleshooting-puppetized-dsc-modules/valid_attributes-pry.png)

![Printing the value of the parameters variable in pry](/iac/assets/2021-01-25-troubleshooting-puppetized-dsc-modules/parameters-pry.png)

Okay, so that shows us the current state of the data, the list of valid attributes, and the parameters respectively.
We can then run `next` and check the value of `data` again to see what the `data.select!` line did:

![Printing the value of the data variable in pry after the select! method is used on it](/iac/assets/2021-01-25-troubleshooting-puppetized-dsc-modules/data-selected-pry.png)

It looks like the list of key-value pairs has been trimmed down - we do this so only the values that Puppet cares about will be evaluated in the rest of the Puppet run.

If we use `next` again and look at data a final time:

![Printing the value of the data variable in pry after the reject! method is used on it](/iac/assets/2021-01-25-troubleshooting-puppetized-dsc-modules/data-rejected-pry.png)

We see that the key for `PSDscRunAsCredential` has been removed, which happens because it was the only key which was in the list of parameters.

This brings us to a loop in the code.
If we want to see what happens _inside_ the loop, we need to use the `step` command.
This command also lets you shift contexts inside of any method being called.

![Showing the result of stepping into a loop in Pry](/iac/assets/2021-01-25-troubleshooting-puppetized-dsc-modules/step-loop-pry.png)

Note that we're now _inside_ the loop - if we had called `next`, it would've evaluated the whole loop and gone to the next line after it.

If we want to just let Puppet run it's course, we can use the `continue` command - this will keep us in the pry session, looking for the next `pry.binding` in our code.
Right now we only have the one, but you can have any number of them.

If instead we want to exit the puppet run entirely, we can use the `exit!` command, which will bring you back to your PowerShell prompt.

And that's it for basic pry debugging!
A few commands and tools to help you look around and try stuff out to investigate where you think something has gone wrong.

#### Places to look

Here are a few methods you may want to investigate with a pry binding and reasons for that:

- `canonicalize` - this method retrieves the state of the DSC Resource on the node, if it exists, and loads it into a cache for comparing later - if something goes wrong here, chances are you'll get idempotency issues.
- `invoke_get_method` - this is responsible not just for querying the state of the DSC Resource but also for puppetizing the returned data
- `ps_script_content` - this method builds the PowerShell script that gets invoked to query or set the state of a DSC Resource.
  The methods included in it, particularly `prepare_credentials`, `prepare_cim_instances`, and `invoke_params` are where things are most likely to go wrong when turning Puppet code into PowerShell code.

[dsc-forge]:             https://forge.puppet.com/dsc
[incorrect-enums]:       https://github.com/puppetlabs/Puppet.Dsc#incorrect-enum
[invocation-errors]:     https://github.com/puppetlabs/Puppet.Dsc#error-during-invocation
[pry]:                   https://github.com/pry/pry
[puppet-dsc-bug-report]: https://github.com/puppetlabs/Puppet.Dsc/issues/new?assignees=&labels=Bug%2C+bug&template=bug-report.md&title=
[pwshlib]:               https://forge.puppet.com/modules/puppetlabs/pwshlib
[rubyinstaller]:         https://www.powershellgallery.com/packages/RubyInstaller
[troubleshooting-doc]:   https://github.com/puppetlabs/Puppet.Dsc#troubleshooting
[type-errors]:           https://github.com/puppetlabs/Puppet.Dsc#type-errors
