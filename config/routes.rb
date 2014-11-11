Rails.application.routes.draw do

  resources :drops

  resources :assets

  root 'welcome#index'

  devise_for :users

  resources :welcome
  resources :users, only: [:show, :index, :edit, :update]


end
