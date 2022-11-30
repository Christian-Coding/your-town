Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "dashboard", to: "pages#dashboard"
    resources :projects, only: [:index, :new, :create, :show]
    resources :chatrooms, only: :show do
      resources :messages, only: :create
    end
end
