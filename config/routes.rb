Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :cities, only: [:index, :new, :create] do
    resources :projects, only: [:new, :create, :show]
  end
end
