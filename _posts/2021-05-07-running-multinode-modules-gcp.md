---
layout: post
title: "How to port and run multi-node modules in cloud ci / gcp"
author: sheenaajay
categories:
  - module
  - development
tags:
  - modules
  - cloud ci
  - multi node
---

## Multi Node Modules in GCP

**Introduction**

Integration testing in puppet terms, is where we set up a number of vms/containers and test interactions between them. For example this may be

* Install PE and set up some puppet agents to talk with it.
* Setup a NTP server, and register some ntp clients.
* Install puppet server and setup multiple puppet agents.

Ordering of the tests is important, and being able to run a test on an individual system is paramount.

**Design**

We use the following workflow to run multi node modules on  Cloud CI / GCP.

* Provision - We use provision task to provision a node for testing.
* Setup provisioned systems - We use bolt tasks/plans to setup the multi node environment for testing.
* Run tests - We use existing serverspec / litmus helpers to setup the dependencies and setup required for module
  testing.
* Teardown -  We use provision task to teardown the machines.

Lets go through each step in detail.

***Provision***

Litmus allows the provisioning of a vm/container via a task.
We use the provision module's [available tasks](https://github.com/puppetlabs/provision/blob/main/tasks) to spin up the test environment.
When run it creates an litmus_inventory.yaml file that allows both [bolt](https://github.com/puppetlabs/bolt) and [serverspec](https://serverspec.org/) to communicate with that vm/container.

How do we differentiate between different vm/containers? 
Provisioning tasks in the provision module allow us to add arbitrary key/pair values to the bolt inventory file. 
Using the bolt variables allows users to have multiple labels associated with a single machine.

By running the provision bolt tasks manually or through a bolt plan we can label machines.

![Showing role info in litmus_inventory.yaml file]({% link /assets/2021-05-07-running-multinode-modules-gcp/inventory_role.png %}) 
[Example_websphere_provision_plan](https://github.com/puppetlabs/puppetlabs-websphere_application_server/blob/main/plans/provision_machines.pp)

***Setup provisioned systems***

Setup for litmus in acceptance tests relied on 3 things.
* Install agent - A bolt [task](https://github.com/puppetlabs/puppetlabs-puppet_agent/tree/main/tasks) that from a module which installs a puppet agent.
* Install module - A rake task that uses the pdk to build the module under test, and install that on the target vms/containers.
* spec/spec_helper_acceptance_local.rb - extra setup that may be required to test a module, Example [puppetlabs/puppetlabs-apache](https://github.com/puppetlabs/puppetlabs-apache/blob/main/spec/spec_helper_acceptance_local.rb)

For integration testing we are using bolt plans and inventory variables where we can run puppet code / commands, against the specific systems, by labelling the systems.
An example [puppetlabs-websphere_application_server](https://github.com/puppetlabs/puppetlabs-websphere_application_server/blob/main/plans/pe_server_setup.pp)

![Example for provision plan]({% link /assets/2021-05-07-running-multinode-modules-gcp/provision_plan.png %})

We can use spec/spec_helper_acceptance_local.rb for extra setup that may be required to test a module.
An example [puppetlabs-websphere_application_server](https://github.com/puppetlabs/puppetlabs-websphere_application_server/blob/main/spec/spec_helper_acceptance_local.rb)

***Run tests***

We use rspec labelling and rake task to identify the tests to run on integeration environment. Lets go through the details.

* Rspec labelling
  How do we differentiate acceptance tests from integration tests?
  Using rspec labeling we can label tests, e.g. the test is tagged as integration. Everything else can stay the same.

  ![Example for tagging tests]({% link /assets/2021-05-07-running-multinode-modules-gcp/integration_tag.png %})

* Integration test rake task
  Adding a friendly rake task.This is added to the Rakefile of the module.

  ![Example for adding rake task]({% link /assets/2021-05-07-running-multinode-modules-gcp/rake_task.png %})

* Helper functions to target labeled containers/vms
  There are a number of helper methods required to allow tests to target a specific container/vm.
  This is required for serverspec/litmus as it will be carrying out the tests on that container/vm.
  Below are some examples or helper methods of filtering to get either a single vm/container or retrieving multiple vms/targets.
  [puppetlabs-websphere_application_server](https://github.com/puppetlabs/puppetlabs-websphere_application_server/blob/main/spec/spec_helper_acceptance_local.rb)
  [puppetlabs-kubernetes](https://github.com/puppetlabs/puppetlabs-kubernetes/blob/main/spec/spec_helper_acceptance_local.rb)

  ![Example for identifying target nodes]({% link /assets/2021-05-07-running-multinode-modules-gcp/target_nodes.png %})

* Testing
   The below command will only run tests labelled as ‘integration’
   `bundle exec rake websphere_application_server:integration`

***Teardown***

  We use existing provision task to teardown all the provisioned machines.

## Lets go through different scenarios where we can use multi node testing

***Multiple puppet agents***

In the setup we have many puppet agents, a module is installed and tests are run.

Commands
```
bundle install --path .bundle/gems/ --jobs 4
bundle exec rake spec_prep
bundle exec bolt --modulepath spec/fixtures/modules plan run ntp::provision_gcp
bundle exec rake litmus:install_agent
bundle exec rake litmus:install_module
bundle exec rake ntp::integration
bundle exec rake 'litmus:tear_down'
```
Example
[puppetlabs-ntp](https://github.com/puppetlabs/puppetlabs-ntp/tree/multinodentp)

***Puppet server and agent***

In the setup we have puppet server and puppet agents, a module is installed and tests are run.
we can use bolt plans for provisioning number of nodes with roles tagged to each of it.
There is new task to install open source puppet server in the provision module.
[install_puppetserver](https://github.com/puppetlabs/provision/blob/main/tasks/install_puppetserver.json)

Commands
```
bundle install --path .bundle/gems/ --jobs 4
bundle exec rake spec_prep
bundle exec bolt --modulepath spec/fixtures/modules plan run kubernetes::provision_cluster
bundle exec bolt --modulepath spec/fixtures/modules plan run kubernetes::puppetserver_setup
bundle exec rake litmus:install_agent
bundle exec rake litmus:install_module
bundle exec rake kubernetes::integration
bundle exec rake 'litmus:tear_down'
```
Example
[puppetlabs-kubernetes](https://github.com/puppetlabs/puppetlabs-kubernetes)

![Example github workflow run]({% link /assets/2021-05-07-running-multinode-modules-gcp/github_workflow.png %})

***PE and agents***

In the setup we have PE server and puppet agents, a module is installed and tests are run.
we can use bolt plans for provisioning number of nodes with roles tagged to each of it.
There is a task to install PE in the puppet-deploy_pe module.
[provision_master/agents](https://github.com/jarretlavallee/puppet-deploy_pe/tree/master/plans)

Commands
```
bundle install --path .bundle/gems/ --jobs 4
bundle exec rake spec_prep
bundle exec bolt --modulepath spec/fixtures/modules plan run ntp::provision_gcp
bundle exec bolt --modulepath spec/fixtures/modules -i ./spec/fixtures/litmus_inventory.yaml plan run ntp::pe_server
bundle exec bolt --modulepath spec/fixtures/modules -i ./spec/fixtures/litmus_inventory.yaml plan run ntp::pe_agent
bundle exec rake litmus:install_module
bundle exec rake ntp::integration
bundle exec rake 'litmus:tear_down'
```

Example
[puppetlabs-ntp](https://github.com/puppetlabs/puppetlabs-ntp/tree/multinodentp) 
![Plan to install PE server]({% link /assets/2021-05-07-running-multinode-modules-gcp/pe_server.png %}) 
![Plan to install puppet agent]({% link /assets/2021-05-07-running-multinode-modules-gcp/pe_agent.png %}) 

## Exampes for GitHub Action Workflows for multi node modules

* [puppetlabs-websphere_application_server](https://github.com/puppetlabs/puppetlabs-websphere_application_server/tree/main/.github/workflows)
* [puppetlabs-kubernetes](https://github.com/puppetlabs/puppetlabs-kubernetes/tree/main/.github/workflows)

## Thank you

Thanks [TP](https://github.com/tphoney) for the valuable work on integration testing.
Thanks [Marty](https://github.com/MartyEwings) for the work on installing PE on cloud CI.
