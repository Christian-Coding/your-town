Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "dashboard", to: "pages#dashboard"
    resources :projects, only: [:index, :new, :create, :show, :update, :edit]
      member do
        post "upvote", to: "projects#upvote"
        post "downvote", to: "projects#downvote"
      end
    delete "projects/:id", to: "projects#destroy", as: :delete_project
    resources :chatrooms, only: :show do
      resources :messages, only: :create
    end
end
