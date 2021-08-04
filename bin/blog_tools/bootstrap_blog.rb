#!/usr/bin/env ruby

raise 'Please define Github token as env var GITHUB_TOKEN' unless ENV['GITHUB_TOKEN']

require 'erb'
require_relative 'lib/modules_released'
require_relative 'lib/community_prs'

blog_post_date = date_of_next_monday
blog_post_filename = "#{blog_post_date}-status-update.md"

workflow = ERB.new(File.read('blog_template/status-update-template.md.erb'), nil, '-').result(binding)
if File.write(File.join('..', '..', '_posts', blog_post_filename), workflow)
  puts "Blog post starting template created in _posts/#{blog_post_filename}"
end
