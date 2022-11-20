# frozen_string_literal: true

Rails.application.routes.draw do
  root 'items#index'
  resources :items do
    collection do
      get :active
      get :inactive
      get :borrowed
      get :on_place
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
