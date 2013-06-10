require 'octokit'

class Staggered
  def initialize(github_repository)
    @repo = github_repository
  end

  def releases
    versions
  end

  private

  def client
    @client ||= Octokit::Client.new(oauth_token: ENV['GITHUB_TOKEN'])
  end

  def tags
    client.tags(@repo)
  end

  def versions
    tags.collect do |tag|
      commit = client.commit(@repo, tag.commit.sha)
      date_string = commit.commit.committer.date
      { tag:  tag.name,
        project: @repo,
        tagged_at: Time.parse(date_string) }
    end
  end
end
