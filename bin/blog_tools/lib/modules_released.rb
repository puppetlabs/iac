# frozen_string_literal: true

require 'date'
require 'json'
require 'net/http'
require_relative 'common'

FORGE_URI = URI.parse('https://forgeapi.puppetlabs.com/v3/modules?module_groups=base+pe_only&owner=puppetlabs&limit=100')

http = Net::HTTP.new(FORGE_URI.host, FORGE_URI.port)
http.use_ssl = true

request = http.get(FORGE_URI.request_uri)

resp = JSON.parse(request.body)
forge_modules = resp['results']
                .select { |forge_module| iac_repos.include? ("puppetlabs/" + forge_module['slug']) }
                .select { |forge_module| Date.parse(forge_module['updated_at']).strftime('%s').to_i >= last_blog_post_utc_time }

if forge_modules.size == 0
  puts 'No modules released this week!'
else
  puts "#{forge_modules.size} modules released since last blog post:" unless forge_modules.size == 0
end


@module_releases = []

forge_modules.each do |forge_module|
  begin
    name = forge_module['current_release']['metadata']['name']
    ver = forge_module['current_release']['version']
    proj_url = forge_module['current_release']['metadata']['project_page']
    module_link_url = "[#{name}]: #{proj_url}"
    @links << module_link_url unless @links.include? module_link_url

    @module_releases << {
      version: "`#{ver}`",
      module_link_ref: "[`#{name}`][#{name}]"
    }

    puts "- #{name} (#{ver})"
  rescue StandardError => e
    puts "Error #{e} for #{forge_module}"
  end
end
