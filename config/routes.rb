Rails.application.routes.draw do
  devise_for :users
  get "dashboard", to: "pages#dashboard"
  root to: "pages#home"
  resources :projects, only: [:index, :new, :create, :show] do
    member do
      post "upvote", to: "projects#upvote"
    end
  end
end
