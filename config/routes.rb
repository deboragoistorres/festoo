Rails.application.routes.draw do
resources :products, only: [:index, :show, :new, :create, :update, :destroy]
  get 'bookings/new'
  get 'bookings/edit'
  devise_for :users
  root to: 'pages#home'
  resources :products
end
