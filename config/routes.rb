Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post "login", to: "auth#login"
      resources :users, only: [:create, :index] 

      resources :resumes, only: [:index, :show, :create, :update, :destroy] 
    end
  end
end

# Verb | Path | Controller#Action
# POST | /api/v1/login | api/v1/auth#login
# POST | /api/v1/users | api/v1/users#create
# GET | /api/v1/users | api/v1/users#index
# GET | /api/v1/resumes | api/v1/resumes#index
# GET | /api/v1/resumes/:id | api/v1/resumes#show
# POST | /api/v1/resumes | api/v1/resumes#create
# PUT | /api/v1/resumes/:id | api/v1/resumes#update
# PATCH | /api/v1/resumes/:id | api/v1/resumes#update
# DELETE | /api/v1/resumes/:id | api/v1/resumes#destroy