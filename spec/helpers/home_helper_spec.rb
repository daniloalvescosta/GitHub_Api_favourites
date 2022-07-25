# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HomeHelper, type: :helper do
  describe '#verify_favorite' do
    it 'should return true if the repository is in the favorites list' do
      @repository = GitHubApi.new.get_repository('rails', 'rails')
      @Favorite = Favorite.new(
        id: @repository['id'],
        name: @repository['name'],
        owner: @repository['owner']['login'],
        created_at: @repository['created_at'],
        updated_at: @repository['updated_at'],
        forks: @repository['forks'],
        watchers: @repository['watchers'],
        stars: @repository['stargazers_count'],
        description: @repository['description'],
        clone_url: @repository['clone_url'],
        homepage: @repository['homepage']
      ).save
      expect(verify_favorite(@repository)).to eq(true)
    end
  end
end
