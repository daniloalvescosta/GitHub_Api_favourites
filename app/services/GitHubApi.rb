# frozen_string_literal: true

class GitHubApi
  include HTTParty
  base_uri 'https://api.github.com'

  def initialize
    @options = {}
  end

  def get_repositories(languages)
    @options[:query] = { per_page: 20, q: languages.to_s, sort: 'stars', order: 'desc' }
    self.class.get('/search/repositories', @options)
  end

  def get_repository(owner, repository_name)
    self.class.get("/repos/#{owner}/#{repository_name}")
  end
end
