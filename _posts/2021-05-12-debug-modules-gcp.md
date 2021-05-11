---
layout: post
title: "Debugging Module Failures in Cloud Content CI"
author: sheenaajay
categories:
  - module
  - development
tags:
  - modules
  - cloud ci
  - multi node
  - debug
  - gcp
---

## Debugging Module Failures in Cloud Content CI

[Purpose](#purpose)

[Steps](#steps)

Purpose
------------
This document provides details on debugging modules failure on GCP. Using the https://github.com/luchihoratiu/debug-via-ssh action we can connect to a GitHub Actions runner via SSH for interactive debugging using ngrok while keeping the machine alive. This would be a suitable and easy method to manage a quick debugging session on module failures.

Steps
-------

#### Creat the ngrok auth token

1. Go to https://ngrok.com/
2. Hit Sign up in the top right corner
3. Login via GitHub/Google or Sign up for a standalone account
4. From the given dashboard, you can now get your ngrok auth token

#### Following secrets should be added to the repo.

* **NGROK_AUTH_TOKEN** - The authorization token received from ngrok.
* **SSH_PASS** - The password used for starting a SSH session.

#### Following actions permissions should be updated in the repo.

`https://github.com/puppetlabs/puppetlabs-<modulename>/settings/actions`
![Actions permissions]({% link /assets/2021-05-12-debug-modules-gcp/action_permission.png %}) 
`luchihoratiu/*,`

#### Workflow Update for Debugging

Update the workflows for debugging. Add the following section just after the install_module section to display the SSH connection details and pause the build for debugging.

    - name: Start SSH session
      uses: luchihoratiu/debug-via-ssh@main
      with:
        NGROK_AUTH_TOKEN: ${{ secrets.NGROK_AUTH_TOKEN }}
        SSH_PASS: ${{ secrets.SSH_PASS }}

**_Note: When creating the PR to jump into this SSH session, you need to open it against 'puppetlabs' namespace. Your personal fork will not have access to SSH_PASS_**

#### Connection to the runner
The workflow will display the SSH connection details of the runner to start the debug session. SSH session is limited by overall build time (6 hours).
![SSH Connection Details]({% link /assets/2021-05-12-debug-modules-gcp/SSH.png %})

#### Loginto Runner and Execute the tests

1. Login with the SSH connection details and the secrets provided in the repo for `SSH_PASS`
2. Switch to root `sudo -i`
3. Navigate to the  module directory `/home/runner/work/puppetlabs-<module>/puppetlabs-<module>`
4. Install rvm and  specify the default ruby version on the system `https://rvm.io/rvm/install`
5. Run `bundle install`
6. cat `spec/fixtures/litmus_inventory.yaml` file and get the uri(GCP box used for module testing) ![GCP Details]({% link /assets/2021-05-12-debug-modules-gcp/URI.png %})
7. Now you can run the tests on the provisioned box and debug the failures `bundle exec rake litmus:acceptance:<uri>`

#### Notes

GCP VM instances will be limited for 2 hours because of the VM Reaper in the provision service.

We can execute the manifests locally which is available in the root directory and also can verify the log messages.

Firewall is created and tagged with each VM, which will restrict users to login to the provisioned box only from the git hub Action runner.

The above given steps helps to manage a quick debugging session on module failures on Cloud CI.

