require 'rails_helper'

RSpec.describe ReposController, type: :controller do
    describe 'GET #show' do
        it 'returns http success' do
          @repository = GitHubApi.new.get_repository('rails', 'rails')
          get :show, params: { owner_name: @repository['owner']['login'], repository_name: @repository['name'] }
          expect(response).to have_http_status(:success)
        end
    end
end