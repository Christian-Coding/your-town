Rails.application.routes.draw do
  devise_for :users
  get "dashboard", to: "pages#dashboard"
  root to: "pages#home"
  resources :cities, only: [:index, :new, :create] do
    resources :projects, only: [:new, :create]
  end
end
