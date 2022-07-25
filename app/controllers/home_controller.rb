# frozen_string_literal: true

class HomeController < ApplicationController
  before_action :set_global_github_api

  def index; end

  def search
    @languages = params[:languages].downcase
    @repositories = @github_api.get_repositories(@languages)
  end

  def show
    @repository = @github_api.get_repository(params[:owner], params[:repository_name])
  end

  private

  def set_global_github_api
    @github_api = GitHubApi.new
  end
end
