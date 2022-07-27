# frozen_string_literal: true

class GitHubApi
  attr_accessor :options
  include HTTParty
  base_uri 'https://api.github.com'

  def initialize
   @options = {
      
   }
  end

  def get_repositories(languages)
    @langs = ['ruby', 'java', 'python', 'c++', 'rust']

    return false unless @langs.include?(languages)
    options[:query] = { per_page: 20, q: languages.to_s, sort: 'stars', order: 'desc', Authorization: 'token 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' }
    self.class.get('/search/repositories', options)
  end

  def get_repository(owner, repository_name)
    self.class.get("/repos/#{owner}/#{repository_name}",
      headers: {
        'authorization' => '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'
      })
  end

  def repo_params(repository) 
    {
      id: repository['id'],
      name: repository['name'],
      owner: repository['owner']['login'],
      created_at: repository['created_at'],
      updated_at: repository['updated_at'],
      forks: repository['forks'],
      watchers: repository['watchers'],
      stars: repository['stargazers_count'],
      description: repository['description'],
      clone_url: repository['clone_url'],
      homepage: repository['homepage']
    }
  end
end
