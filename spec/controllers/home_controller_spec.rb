# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #search' do
    it 'returns http success' do
      @languages = GitHubApi.new.get_repositories('ruby')
      get :search, params: { languages: @languages }
      expect(response).to have_http_status(:success)
    end
  end

 
end
