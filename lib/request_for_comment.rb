require 'bundler'
Bundler.require

class RequestForComment
  attr_reader :user, :repo, :github

  def initialize(options={})
    @user = options[:user]
    @repo = options[:repo]

    oauth_token = options[:oauth_token] || ENV['OAUTH_TOKEN']
    @github = Github.new oauth_token: oauth_token
  end

  def get_pull_request(branch)
    pull_requests = github.pulls(user: user, repo: repo).list(base: branch)

    if pull_requests.size == 1
      pull_request = pull_requests[0]
    elsif pr.size == 0
      raise "could not find a pull-request associated with this branch#head"
    else
      raise "more than one pull-request associated with this branch#head"
    end

    return pull_request
  end

  def pull_request_id(branch)
    get_pull_request(branch)['number']
  end

  def post_comment(branch, comment)
    github.issues.comments.create user, repo, pull_request_id(branch), body: comment
  end
end
