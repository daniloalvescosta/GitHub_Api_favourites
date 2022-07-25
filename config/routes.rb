# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  post '/search', action: 'search', controller: 'home'
  get 'home/show', action: 'show', controller: 'home'
  post '/favorites', action: 'create', controller: 'favorites'
  get '/favorites', action: 'index', controller: 'favorites'
  delete '/favorites/:id', action: 'destroy', controller: 'favorites'

  resources :favorites, only: %i[index show create destroy]
end
