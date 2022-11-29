Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :cities, only: [:index] do
    resources :projects, only: [:show]
  end
end
