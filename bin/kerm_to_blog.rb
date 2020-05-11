#!/usr/bin/env ruby

# Example conversation:
#
# David Schmitt:
# > !modules released 7
# kerminator:
# > puppetlabs-cd4pe_jobs / 1.1.0 / 2020-05-06T21:49:37.000Z
# > puppetlabs-cron_core / 1.0.4 / 2020-05-06T12:57:43.000Z / [supported]
# > puppetlabs-cd4pe / 2.0.0 / 2020-05-05T21:57:49.000Z
# > puppetlabs-gcloud_inventory / 0.1.1 / 2020-05-01T16:50:37.000Z
# > puppetlabs-accounts / 6.1.1 / 2020-04-30T16:29:13.000Z / [supported]
# > puppetlabs-puppet_authorization / 0.5.1 / 2020-04-28T00:19:14.000Z
# > puppetlabs-pkcs7 / 0.1.0 / 2020-04-27T17:39:39.000Z
#
# Take kerminator's answer and paste it into stdin or pass through as a file.

FORGE_BASE_URI="https://forge.puppet.com"

ours = []
theirs = []

# read from the first file specified on the CLI or STDIN
while !(line = gets).nil? do
  next unless matches = line.match(%r{^(?<owner>[^-]+)-(?<modulename>\w+) / (?<version>[^/]*) / (?<timestamp>[^/]*)( / (?<tags>.*))?$})

  entry = "- [#{matches[:owner]}/#{matches[:modulename]}](#{FORGE_BASE_URI}/#{matches[:owner]}/#{matches[:modulename]}) (v#{matches[:version]})"

  if File.exist?(File.join('.', '_modules', "#{matches[:owner]}-#{matches[:modulename]}.md"))
    ours << entry
  else
    theirs << entry
  end
end



if ours.empty?
  puts
  puts "Oops, no releases?"
else
  puts
  puts
  puts "Modules released this week:"

  puts ours.sort.join("\n")
end

unless theirs.empty?
  puts
  puts "Modules released by other teams around the company:"
  puts theirs.sort.join("\n")
end
