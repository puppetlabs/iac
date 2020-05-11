## Puppet Modules with Github Actions
 
### Current Setup 

The following image describes the overall setup that is currently used with each of our supported Puppet modules for pre-release checks and weekly CI runs:
![Github Actions - self-hosted runner configurations](Github%20Actions%20Architecture.jpg)

Each workflow uses two custom actions defined as [Litmus Parallel Action](https://github.com/puppetlabs/action-litmus_parallel) and [Litmus Spec Action](https://github.com/puppetlabs/action-litmus_spec) that run on a self-hosted runner on a machine in the internal network. 

Using a self-hosted runner, in this case, allows Litmus to have access and provision the resources needed from the internal VMPooler for the release checks (see the provision.yaml of the module) of each module. 

### Flowchart

![Github Actions - self-hosted runner flowchart with Litmus Actions](Github%20Actions%20Flowchart.jpg)

Each run on the self-hosted runner can be triggered by the team members whenever they do a push to the release branch of a module. Usually it's a fast forward from the master branch before the next release of the module. This definition is controlled by the release workflow you can find in each module repository (.github/workflows/release.yaml). 

The weekly workflow (.github/workflows/weekly.yaml) has a scheduled trigger that will run the current master branch on the self-hosted runner. 
