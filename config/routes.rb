Rails.application.routes.draw do
  devise_for :users
  get "dashboard", to: "pages#dashboard"
  root to: "pages#home"

  get "dashboard", to: "pages#dashboard"
    resources :projects, only: [:index, :new, :create, ;show]

end
