# frozen_string_literal: true

require_relative 'common'
require_relative 'octokit_util'

COMMENT_AUTHOR_IGNORE_LIST = [
  'codecov-commenter',
  'codecov-io',
  'coveralls',
  'dependabot',
  'dependabot[bot]',
  'dependabot-preview[bot]',
  'github-actions[bot]',
  'CLAassistant',
].freeze

@octokit_util = OctoKitUtil.new
@client = @octokit_util.client
@blog_author = @client.user['login']

def back_off_api_if_required
  limit = @client.rate_limit!
  return if limit.remaining > 0

  back_off_time = limit.resets_in + 5
  sleep(back_off_time)
end

def ignore_author?(comment_author)
  return true if @octokit_util.iac_member? comment_author
  return true if @octokit_util.devx_member? comment_author
  return true if COMMENT_AUTHOR_IGNORE_LIST.include? comment_author
end

def get_comment_authors(comment_url, pr_author)
  comments_to_credit = []
  resp = @client.get(comment_url)
  comments = resp.reject { |comment| comment['user']['type'] == 'Bot' }
                 .reject { |comment| ignore_author?(comment['user']['login']) }
                 .reject { |comment| comment['user']['login'] == pr_author}
  comments.each do |comment|
    user_comment_name_ref = "[#{comment['user']['login']}][#{comment['user']['login']}]"
    comments_to_credit << user_comment_name_ref unless comments_to_credit.include? user_comment_name_ref

    user_comment_profile_url = "[#{comment['user']['login']}]: #{comment['user']['html_url']}"
    @links << user_comment_profile_url unless @links.include? user_comment_profile_url
  end
  comments_to_credit
end

prs_to_credit = []

puts 'Checking supported IAC repos for contributions to credit:'
max_length = iac_repos.map(&:length).max
iac_repos.each do |repo_name|
  begin
    padding = max_length - repo_name.size
    puts "- #{repo_name}" + ' ' * padding + "(TOTAL: #{prs_to_credit.size})"
    back_off_api_if_required

    pr_res = @client.get("repos/#{repo_name}/pulls", state: 'all')
    pr_res.each do |pr|
      next if ignore_author?(pr['user']['login'])
      next if pr['merged_at'].nil?
      next if pr['merged_at'].to_i < last_blog_post_utc_time

      prs_to_credit << pr
    end
  rescue StandardError => e
    puts "Error #{e} for #{repo_name}"
  end
end

puts ''

@community_prs_shoutout = []

prs_to_credit.each do |pr|
  repo = pr['html_url'].split('/')[4]

  pr_link_url = "[#{repo}-pr-#{pr['number']}]: #{pr['html_url']}"
  @links << pr_link_url unless @links.include? pr_link_url
  pr_link_ref = "[`#{repo}##{pr['number']}`][#{repo}-pr-#{pr['number']}]"

  author_link_url = "[#{pr['user']['login']}]: #{pr['user']['html_url']}"
  @links << author_link_url unless @links.include? author_link_url
  author_link_ref = "[#{pr['user']['login']}][#{pr['user']['login']}]"

  comment_author_refs = get_comment_authors(pr['comments_url'], pr['user']['login'])

  community_pr_shoutout = "#{pr_link_ref}: \"#{pr['title']}\", thanks to #{author_link_ref}"
  unless comment_author_refs.empty?
    community_pr_shoutout += ' and the following people who helped get it over the line ' \
                           "(#{comment_author_refs.join(', ')})"
  end

  @community_prs_shoutout << community_pr_shoutout
end
