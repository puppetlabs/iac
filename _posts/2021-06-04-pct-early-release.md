---
layout: post
title: "🚀 Puppet Content Templates 0.1.0 🚀"
author: jpogran
categories:
  - pdk
  - development
tags:
  - pdk
  - pct
---

# ✨ PDK Puppet Content Templates 0.1.0 released ✨

We are proud to announce the first release for the new PDK templating system: **Puppet Content Templates (PCT)**.

**Puppet Content Templates** codify a structure to produce content for any Puppet Product that can be authored without direct oversight of the Puppet PDK team.

To get started download the release from the [pdkgo repo](https://github.com/puppetlabs/pdkgo/). A step by step guide is included in the README.

> ⚠️ PCT is currently in an EXPERIMENTAL phase and feedback is encouraged via [pdkgo/discussions](https://github.com/puppetlabs/pdkgo/discussions). ⚠️

## Create all types of content 🎨

A **PCT** can create any type of a Puppet Product project. You can create Puppet [control repos](https://github.com/puppetlabs/control-repo), Puppet [modules](https://puppet.com/docs/puppet/7/modules_fundamentals.html), Bolt [projects](https://puppet.com/docs/bolt/latest/projects.html), and more!

A **PCT** can also create one or more independent files to be used inside a project. You can create Puppet [classes](https://puppet.com/docs/puppet/7/lang_classes.html), [facts](https://puppet.com/docs/puppet/7/fact_overview.html), [functions](https://puppet.com/docs/puppet/7/functions_ruby_overview.html), or other tooling configuration files such as CI files, gitignores, or rubocop.yml.

Since a PCT is external to the PDK code base, Puppet Product teams, Partners and the wider OSS Community can publish their own content without input or effort from the PDE team. This enables a single tool to support many products.


## Building blocks 🧱

A set of individual **PCTs** can be combined to produce something as simple as a Puppet module with several Puppet classes or as complex as a complete Puppet Control repo with roles and profiles ready to deploy.

We want to enable a building block experience. An experience where you can pick and choose from an array of templates to build the content you want. We aim to be like your favorite building block toy, where you choose your components and end up with a wonderful structure.

An opt-in experience, where you choose what is added to your content, instead of dealing with a long list of files you'll never use.

## Customizable 📐

Each **PCT** comes with parts that can be controlled via configuration. These parts have common defaults, but can be changed to suit your environment. The idea is to enable quick deployment of templates, but allow customization to suit your needs.

This user can customize how PCTs operate by using YAML files and never need to know how to make a template.

If you want a more drastic change, you can copy the **PCT** and add your own files and changes, then use that **PCT** without having to get a pull request approved.
