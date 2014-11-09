Rails.application.routes.draw do

  devise_for :users

  resources :users
  resources :welcome
  root 'welcome#index'


end
