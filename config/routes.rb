Rails.application.routes.draw do
  root 'static_pages#welcome'
  get 'static_pages/about'


  devise_for :users

  resources :cards

  resources :orders, only: [:index, :show, :create, :destroy]

end
