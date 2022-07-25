require 'rails_helper'

RSpec.describe FavoritesController, type: :controller do


    describe 'GET #index' do
        it 'returns http success' do
        get :index
        expect(response).to have_http_status(:success)
        end
    end

    describe 'GET #create' do
        it 'returns http success' do
        @repository = GitHubApi.new.get_repository('rails', 'rails')
        post :create, params: { owner: @repository['owner']['login'], repository_name: @repository['name'] }
        expect(response).to have_http_status(:found)
        end
    end
    
    describe 'GET #show' do
        it 'returns http success' do
        @repository = GitHubApi.new.get_repository('rails', 'rails')
        post :create, params: { owner: @repository['owner']['login'], repository_name: @repository['name'] }
        get :show, params: { id: @repository['id'] }
        expect(response).to have_http_status(:success)
        end
    end
    
    describe 'GET #destroy' do
        it 'returns http success' do
        @repository = GitHubApi.new.get_repository('rails', 'rails')
        post :create, params: { owner: @repository['owner']['login'], repository_name: @repository['name'] }
        get :destroy, params: { id: @repository['id'] }
        expect(response).to have_http_status(:see_other)
        end
    end
end