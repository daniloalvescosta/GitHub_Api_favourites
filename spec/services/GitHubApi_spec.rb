# frozen_string_literal: true

require 'rails_helper'

RSpec.describe GitHubApi, type: :service do
  describe 'get repositories' do
    it 'should return repositories' do
      languages = 'ruby'
      expect(GitHubApi.new.get_repositories(languages)).to be_a(HTTParty::Response)
    end
  end

  describe 'get repository' do
    it 'should return a repository' do
      expect(GitHubApi.new.get_repository('rails', 'rails')).to be_a(HTTParty::Response)
    end
  end
end
