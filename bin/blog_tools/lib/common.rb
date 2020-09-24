# frozen_string_literal: true

require 'date'

MANAGED_MODULES_URI = URI.parse('https://puppetlabs.github.io/iac/modules.json')

@links = []

def last_blog_post_utc_time
  return @last_blog_post_utc_time if defined?(@last_blog_post_utc_time)

  last_blog_post_md = Dir['../../_posts/*status-update.md'].max_by { |f| File.mtime(f) }
  m = last_blog_post_md.match(/(?<DATE>\d+-\d+-\d+)-status-update\.md/)
  raise 'Unable to determine last blog post date' unless m

  last_blog_post_date = Date.parse(m[:DATE])
  puts "Last blog date: #{last_blog_post_date.iso8601}"
  @last_blog_post_utc_time = last_blog_post_date.strftime('%s').to_i
end

def date_of_next_friday
  date  = Date.parse('Friday')
  delta = date > Date.today ? 0 : 7
  (date + delta).iso8601
end

def iac_repos
  return @iac_repos if defined?(@iac_repos)

  puts 'Generating list of IAC Supported repos'
  @iac_repos = []
  response = Net::HTTP.get_response(MANAGED_MODULES_URI)
  output = response.body
  parsed = JSON.parse(output)
  parsed.each do |_k, v|
    @iac_repos << v['title']
  end
  @iac_repos
end
