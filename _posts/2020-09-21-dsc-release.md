---
layout: post
title: "DSC + Puppet: Arrived!"
author: michaeltlombardi
categories:
  - news
  - roadmap
tags:
  - powershell
  - dsc
  - windows
  - forge
---

Earlier this year, we [announced an upcoming project][initial-blog] to drastically improve the story for using DSC Resources with Puppet.
Today, we're announcing the general availability of that project!

The [`Puppet.Dsc` PowerShell module][dsc-repo] is now available on the [PowerShell Gallery][dsc-gallery];
furthermore, an initial batch of **twenty-six** PowerShell modules with DSC Resources have been Puppetized and [published to the Forge][dsc-forge]!

We picked several of the most-downloaded modules with DSC Resources released in the last year to start with, but in the coming weeks you should find _everything_ available on the PowerShell Gallery up on the Forge!

But today, in addition to sharing this news, I want to go into a bit more detail, both with what's going on under the hood and with how you can use these auto-generated modules.

### Installing the Modules

If you just want to get your hands on the PowerShell module to read the help and experiment on your own, you can install it like any other PowerShell module:

```powershell
Install-Module -Name Puppet.Dsc
Import-Module -Name Puppet.Dsc
Get-Command -Module Puppet.Dsc
Get-Help -Name New-PuppetDscModule -ShowWindow
```

Some of the functions from the PowerShell module rely on the [Puppet Development Kit (PDK)][pdk-docs] being installed;
we suggest using [Chocolatey][choco-site] to do so, but you can also [manually download and install][pdk-download] if you prefer.

```bash
choco install pdk
```

If you want to do the same sort of thing with one of the Puppetized modules from the forge, you can install them and treat them just like any other Puppet module:

```bash
# For example, installing the Puppetized ComputerManagementDsc module manually:
puppet module install dsc-computermanagementdsc --Version 8.4.0-0-0
# Or via r10k / Code Manager / Bolt:
mod 'dsc-computermanagementdsc', '8.4.0-0-0'
```

## Puppetizing a PowerShell module

So, you want to turn a PowerShell module with DSC Resources into a Puppet module?
You can do this with a single command:

```powershell
# If you run this command without the PassThru flag it returns nothing to the output stream.
# Any conversion errors will be in the error stream, as usual.
# If you'd like a deeper look at what it's doing, try running it with the Verbose flag.
New-PuppetDscModule -PowerShellModuleName ComputerManagementDsc -PassThru
```

Unfortunately, the output from running it isn't all that exciting:

![Output from a PowerShell console showing the running of the command above as well as the return output, which is the folder object representing the new Puppet module on disk][img-new-puppetdscmodule]

Behind the scenes, the command:

1. Uses the [PDK][pdk-docs] to create a new Puppet module
1. Searches the [PowerShell Gallery][psgallery] for the ComputerManagementDsc module and vendor it into the new Puppet module
1. Converts each of the DSC Resources from the vendored PowerShell module into a Puppet Resource API type and provider
1. Updates the Puppet module's metadata and documentation based on the PowerShell module.

> At this time, for best results we strongly recommend you run the command with administrator privileges in a Windows PowerShell 5.1 session.
> While it _does_ work without administrator privileges, the function cannot fully map nested CIM instances without administrator privileges.
> For more information on this process, check out the [`about_Puppetization` HelpFile][about_puppetization] via `Get-Help` for a more in-depth documentation of this process.

## Using puppetized modules

On the one hand, there's not much to say about using the Puppetized modules with DSC Resources;
you use them _precisely_ like any other Puppet module, after all.
On the other hand, there's some strong utility worth going over in more detail you may or may not be aware of!

To get the most value from your workflow, we **strongly** recommend you author your manifests that include Puppetized DSC Resources in [VSCode][vscode] with the [Puppet extension][vscode-extension] enabled.

When we open a file named `example.pp` to edit, the Puppet extension automatically begins to load;
once this is finished, we have access to a ton of useful authoring support, including intellisense.

For example, if we've installed the `computermanagementdsc` Puppet module, we need only type `dsc_execution` before IntelliSense kicks in and helps us out:

![A VSCode window showing the text 'dsc_execution' has raised a tooltip which lists multiple possible matches, including dsc_powershellexecutionpolicy, and to the right it shows the help information for this resource.][img-intellisense-resource]

Note that it tells us not just what available resources might match, it also displays the available documentation for each resource.

We also get IntelliSense for each property we want to pass, too;
again, this doesn't just show the available options but also includes any available documentation for each property.

![A VSCode window showing the text 'dsc' inside a Puppet resource declaration for dsc_powershellexecutionpolicy, with a tooltip listing the possible properties, including dsc_executionpolicy and dsc_executionpolicyscope; as before, the help information (now including valid values) is to the right.][img-intellisense-property]

You can also review the documentation for a property by hovering over it:

![A VSCode window showing an empty declaration for 'dsc_executionpolicy' with the mouse hovering over that key, displaying a tooltip which includes the documentation and valid values for the property.][img-docs-property]

Where this combination really begins to sing is when you've begun authoring a manifest and something goes wrong.

![A VSCode window showing a fully defined manifest with markings to highlight issues.][img-problems]

The image above shows that the file name in the left-hand pane has changed colors and is now red.
It also underscores two entries in the manifest that VSCode has highlighted - one with orange underlining, indicating a warning, and one with red underlining, indicating an error.
Finally, down in the bottom left corner it highlights the problem symbols for errors and warnings, both of which display a count of one.

VSCode (via the extension) knows _something_ is wrong with our manifest;
we can click on those symbols to bring up the Problems Pane and investigate:

![A VSCode window displaying the Problems Pane with two entries][img-problems-pane]

This tells us there's a warning about the indentation of a hash rocket and some sort of syntax error preventing the extension from parsing line 3.

A quick look at the code tells us that we're missing a comma in the resource declaration on line 2, and as soon as we add that comma in we get confirmation:

![A VSCode window displaying the Problems Pane with only one warning][img-problems-added-comma]

All that remains now is the formatting issue.
Luckily, VSCode is able to automatically handle this for us via the _Format Document_ command:

![A VSCode window displaying the right-click menu over the manifest, highlighting the 'Format Document' command with a hotkey combination of 'Shift+Alt+F'][img-format-document-option]

Which we can see does in fact move the hash rocket and resolve our last problem:

![A VSCode window displaying the manifest with no issues or warnings, the hash rocket moved appropriately to ensure preferred formatting for the manifest.][img-manifest-fixed]

We're ready to apply this manifest!

```bash
puppet apply ./example.pp
```

Only... there was a problem;
without reading the documentation for `dsc_executionpolicyscope` thoroughly enough, we specified `Machine` instead of `MachinePolicy`!

Puppet gives us back a pretty good error message though:

```text
Error: Parameter dsc_executionpolicyscope failed on Dsc_powershellexecutionpolicy[[OPS-213]]: dsc_powershellexecutionpolicy.dsc_executionpolicyscope expects a match for Enum['CurrentUser', 'LocalMachine', 'MachinePolicy', 'Process', 'UserPolicy'], got 'Machine'
```

We get an explicit list of the allowed values _before_ it tries to invoke DSC with the `Set` action.
This is unlike our prior implementation in `puppetlabs-dsc_lite`, which has no way of knowing whether the values you've provided are correct.

Once we correct our manifest to specify `LocalMachine` and re-run the command, we get something else:

```text
Notice: Compiled catalog for michael.lombardi-pf12aa84 in environment workstation_production in 1.04 seconds
Notice: /Stage[main]/Main/Dsc_powershellexecutionpolicy[[OPS-213]]/dsc_executionpolicy: dsc_executionpolicy changed 'Unrestricted' to 'RemoteSigned'
Notice: dsc_powershellexecutionpolicy[{:name=>"[OPS-213]", :dsc_executionpolicyscope=>"LocalMachine"}]: Updating: Finished in 0.809555 seconds
Notice: Applied catalog in 1.68 seconds
```

This highlights a change from both of our prior implementations:
you now get _property-by-property_ reporting for DSC Resources when using Puppet!
This implementation knows not just _that_ a DSC Resource was out of sync and therefore applied, but it can tell you exactly which properties were out of sync, what their value was, and what it has been set to in this run.

This brings DSC Resources in line with all of the rest of the resources you manage with Puppet and drastically improves the usefulness of your run reports!

## Coming Up

This wave of converted DSC Resources and the release of the `Puppet.Dsc` module to the PowerShell Gallery is not the _last_ step of our support for using DSC with Puppet, just the initial step.

Over the coming weeks we're going to be looking to you for feedback and incorporating it as fast as we can manage.

We're also moving towards automatically Puppetizing _every_ PowerShell module with DSC Resources on the Gallery.
If there's a module you want to use that isn't yet published under our [**dsc** namespace on the Forge][dsc-forge], let us know in [Slack][puppet-slack] or by [emailing us][dsc-email] and we'll publish it as soon as we can!

In the long run, we plan to get some nightly builds in place to ensure that there's never more than a 24 hour lag between when a PowerShell module with DSC Resources is published (new or merely updated) to the Gallery and when that same module is Puppetized and published to the Forge.

We hope to hear from you soon!

[about_puppetization]: https://github.com/puppetlabs/Puppet.Dsc/blob/main/docs/about_Puppetization.md
[choco-site]: https://chocolatey.org/
[dsc-email]: mailto:dsc@puppet.com
[dsc-forge]: https://forge.puppet.com/dsc
[dsc-gallery]: https://www.powershellgallery.com/packages/Puppet.Dsc
[dsc-repo]: https://github.com/puppetlabs/Puppet.Dsc
[img-docs-property]: {% link /assets/2020-09-21-dsc-release/docs-property.png %}
[img-format-document-option]: {% link /assets/2020-09-21-dsc-release/format-document-option.png %}
[img-intellisense-property]: {% link /assets/2020-09-21-dsc-release/intellisense-property.png %}
[img-intellisense-resource]: {% link /assets/2020-09-21-dsc-release/intellisense-resource.png %}
[img-manifest-fixed]: {% link /assets/2020-09-21-dsc-release/manifest-fixed.png %}
[img-new-puppetdscmodule]: {% link /assets/2020-09-21-dsc-release/new-puppetdscmodule.png %}
[img-problems-added-comma]: {% link /assets/2020-09-21-dsc-release/problems-added-comma.png %}
[img-problems-pane]: {% link /assets/2020-09-21-dsc-release/problems-pane.png %}
[img-problems]: {% link /assets/2020-09-21-dsc-release/problems.png %}
[initial-blog]: https://puppetlabs.github.io/iac/news/roadmap/2020/03/30/dsc-announcement.html
[pdk-docs]: https://puppet.com/docs/pdk/1.x/pdk.html
[pdk-download]: https://puppet.com/try-puppet/puppet-development-kit/
[psgallery]: https://www.powershellgallery.com
[puppet-slack]: https://slack.puppet.com/
[vscode-extension]: https://puppet-vscode.github.io/
[vscode]: https://code.visualstudio.com/
