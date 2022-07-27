# frozen_string_literal: true

class HomeController < ApplicationController
  before_action :set_global_github_api

  def index
    @repository = @github_api.get_repository(params[:owner], params[:repository_name]) 
  end

  def search
    @languages = params[:languages].downcase
    @repositories = @github_api.get_repositories(@languages)
  end

end
