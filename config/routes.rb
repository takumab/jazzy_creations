Rails.application.routes.draw do
  root 'cards#index'

  devise_for :users

  resources :cards

  resources :orders, only: [:index, :show, :create, :destroy]

end
