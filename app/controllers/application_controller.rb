# frozen_string_literal: true

class ApplicationController < ActionController::Base
    before_action :set_global_github_api

    def set_global_github_api
        @github_api ||= GitHubApi.new
    end
end
