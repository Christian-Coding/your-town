Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "dashboard", to: "pages#dashboard"
  get '/tagged', to: "projects#tagged", as: :tagged
  resources :projects do
    member do
      post "upvote", to: "projects#upvote"
      post "downvote", to: "projects#downvote"
    end
  end
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
