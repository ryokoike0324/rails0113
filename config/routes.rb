# frozen_string_literal: true

Rails.application.routes.draw do
  root 'todos#index'
  # get 'todos/index'
  # get 'todos#new'
  # get 'todos/show'
  resources :todos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  # Defines the root path route ("/")
  # root "posts#index"
end
