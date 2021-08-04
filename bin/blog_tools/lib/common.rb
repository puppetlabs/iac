# frozen_string_literal: true

require 'date'

MANAGED_MODULES_URI = URI.parse('https://puppetlabs.github.io/iac/modules.json')
MANAGED_TOOLS_URI = URI.parse('https://puppetlabs.github.io/iac/tools.json')

@links = []

def last_blog_post_utc_time
  return @last_blog_post_utc_time if defined?(@last_blog_post_utc_time)

  dates = Dir['../../_posts/*status-update.md'].map{|f| f.match(/(?<DATE>\d+-\d+-\d+)-status-update\.md/)['DATE'] } - [ date_of_next_monday ]

  last_blog_post_date = Date.parse(dates.max)
  puts "Last blog date: #{last_blog_post_date.iso8601}"
  @last_blog_post_utc_time = last_blog_post_date.strftime('%s').to_i
end

def date_of_next_monday
  date  = Date.parse('Monday')
  delta = date >= Date.today ? 0 : 7
  (date + delta).iso8601
end

def iac_repos
  return @iac_repos if defined?(@iac_repos)

  puts 'Generating list of IAC Supported repos'
  @iac_repos = (load_repos(MANAGED_MODULES_URI) + load_repos(MANAGED_TOOLS_URI))
end

def load_repos(url)
  response = Net::HTTP.get_response(url)
  output = response.body
  parsed = JSON.parse(output)

  result = []
  parsed.each do |_k, v|
    result << v['github']
  end
  result.sort
end
