# frozen_string_literal: true

class GitHubApi
  include HTTParty
  base_uri 'https://api.github.com'

  def initialize
   @options = {}
  end

  def get_repositories(languages)
    @langs = ["ruby","java","python","c++","rust" ]
    
    if @langs.include?(languages)
    @options[:query] = { per_page: 20, q: languages.to_s, sort: 'stars', order: 'desc', authorization: ENV['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'] }
    self.class.get('/search/repositories', @options)
    else
      return false
    end
  end

  def get_repository(owner, repository_name)
    @options[:query] = { authorization: ENV['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'] }
    self.class.get("/repos/#{owner}/#{repository_name}", @options)
  end
end
