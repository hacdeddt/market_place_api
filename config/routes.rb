require "api_constraints"

Rails.application.routes.draw do
  namespace :api, defaults: {format: :json}, path: "/" do
    scope module: :v1,
          constraints: ApiConstraints.new(version: 1, default: true) do
      resources :users, :only => [:index, :show, :create, :update]
      devise_for :users
      #get "/users/:id", to: "users#show"
    end
  end
end
