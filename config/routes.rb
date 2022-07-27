# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  post 'search', to: 'home#search'
  get 'home', to: 'home#index'
  resources :owners, only: %i[show], param: :name do
    resources :repos, only: %i[show], param: :repository_name
  end

  resources :favorites, except: %i[new edit update]
end
