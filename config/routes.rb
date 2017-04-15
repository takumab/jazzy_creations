Rails.application.routes.draw do
  root 'static_pages#welcome'


  devise_for :users

  resources :cards

  resources :orders, only: [:index, :show, :create, :destroy]

end
