Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "dashboard", to: "pages#dashboard"
  resources :cities, only: [:index, :new, :create] do
    resources :projects, only: [:new, :create]
  end
end
