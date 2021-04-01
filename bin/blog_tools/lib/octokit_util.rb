require 'octokit'

class OctoKitUtil
  attr_accessor :client

  def initialize
    Octokit.auto_paginate = true
    @client = Octokit::Client.new(access_token: ENV['GITHUB_TOKEN'])
    client.user.login

    @puppet_members = client.organization_members('puppetlabs')
    @vox_members = client.organization_members('voxpupuli')
    @iac_members = client.organization_members('puppetlabs/teams/modules')
    @devx_members = client.organization_members('puppetlabs/teams/devx')
  end

  def puppet_member?(username)
    @puppet_members.each do |puppet_member|
      return true if username == puppet_member[:login]
    end
    false
  end

  def voxpupuli_member?(username)
    @vox_members.each do |vox_member|
      return true if username == vox_member[:login]
    end
    false
  end

  def iac_member?(username)
    @iac_members.each do |iac_member|
      return true if username == iac_member[:login]
    end
    false
  end

  def devx_member?(username)
    @devx_members.each do |devx_member|
      return true if username == devx_member[:login]
    end
    false
  end
end
