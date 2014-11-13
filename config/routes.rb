Rails.application.routes.draw do

  resources :drops

  resources :assets

  root 'welcome#index'

  devise_for :users

  resources :welcome
  resources :users, only: [:show, :index, :edit, :update]

  match 'assets/get/:id' => 'assets#get', as: 'download', via: :get
end
