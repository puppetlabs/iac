---
layout: post
title: "Docker params change detection"
author: adrianiurca
categories:
  - docker
  - development
tags:
  - bugfix
  - docker
  - personal
---

## Docker params change detection

The problem was reported by a client with the ticket [MODULES-10734](https://tickets.puppetlabs.com/browse/MODULES-10734). After analysis, we discovered that we don't have parameter change detection mechanisms. In this blog post, we try to explain the problem in detail with examples.

An interesting behaviour was present in docker::run component. The problem was that if any parameter was added/modified/removed puppet agent would only apply the change only if you stopped, removed the container manually and reapplied the manifest, forcing a new container creation.

The solution was to create a new function that detects if at least one parameter is changed. The detection mechanism is based on the check between parameter values from the manifest file and correspondent field from the docker inspect object of the currently running container. The solution is present in the 3.11.0 version.

So now let's see how the problem can be reproduced by using version `<= 3.10.2`:

### 1. install puppetlabs/docker module

```bash
$: puppet module install puppetlabs/docker --version 3.10.2
```

### 2. apply this manifest:

```puppet
class { 'docker': }
docker::run { 'servercore':
  image   => 'hello-world:linux',
  restart => 'always',
  net     => $facts['os']['name'] ? {
    'windows' => 'nat',
    default   => 'bridge',
  },
}

```

### 3. check the image tag by running this command:

```bash
$: docker inspect --format="{{ .Config.Image }}" servercore
$: hello-world:linux
```

### 4. change the image tag from `hello-world:linux` to `hello-world:latest` and reapply the manifest.

The manifest should look like this:

```puppet
class { 'docker': }
docker::run { 'servercore':
  image   => 'hello-world:latest',
  restart => 'always',
  net     => $facts['os']['name'] ? {
    'windows' => 'nat',
    default   => 'bridge',
  },
}
```

... and now check if the change was applied

```bash
$: docker inspect --format="{{ .Config.Image }}" servercore
$: hello-world:linux
```

so... something is wrong, the tag was not changed to `hello-world:latest`. If we want to apply this change we need to do a few more steps:

- stop the container: `docker stop servercore`
- remove the container: `docker rm servercore`
- reapply the manifest detailed above: `puppet apply <manifest_file_name>`

In conclusion in the puppetlabs/docker module versions `<= 3.10.2 `the parameter change is not detected. If we want to change some parameters for the same container, the puppet agent will not apply these changes for us until we delete the container manually.
Using the latest versions(`>=3.11.0`) this problem is resolved by having the parameter detection mechanism implemented for the most important parameters such as image, volumes and ports.
Also please take a look at the [solution](https://github.com/puppetlabs/puppetlabs-docker/pull/648).

Kind regards,
[Adrian Iurca](https://github.com/adrianiurca)
