class ReposController < ApplicationController
    before_action :set_global_github_api

    def show
        @repository = @github_api.get_repository(params[:owner_name], params[:repository_name]) 
    end
end