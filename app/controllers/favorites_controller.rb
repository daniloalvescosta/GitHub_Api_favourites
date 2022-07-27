# frozen_string_literal: true

class FavoritesController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :set_global_github_api
  before_action :fetch_favorite, only: %i[show destroy]

  def index
    @favorites = Favorite.all
  end

  def show

  end

  def create
    @repository = @github_api.get_repository(params[:owner], 
                                             params[:repository_name])

    @favorite = Favorite.new(@github_api.repo_params(@repository))

    redirect_to favorites_path if @favorite.save
  end

  def destroy
  
    @favorite.destroy!
    redirect_to favorites_path, status: :see_other
  end

  private
  def fetch_favorite
    @favorite = Favorite.find(params[:id])
  end
end
