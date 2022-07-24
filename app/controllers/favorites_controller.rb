class FavoritesController < ApplicationController
    protect_from_forgery with: :null_session
    before_action :set_global_github_api

    def index
        @favorites = Favorite.all
    end

    def new
        @favorite = Favorite.new
    end

    def show
        @favorite = Favorite.find(params[:id])
    end

    def create 
        @repository = @github_api.get_repository(params[:owner], params[:repository_name])
        
        @favorite = Favorite.new(
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
        )
        
        if @favorite.save
            redirect_to favorites_path
        end
    end 

    def destroy
        @favorite = Favorite.find(params[:id])
        @favorite.destroy!
        redirect_to favorites_path, status: :see_other
    end

    private
    def set_global_github_api
        @github_api = GitHubApi.new
      end
end
