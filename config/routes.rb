Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/edit'
  devise_for :users
  root to: 'pages#home'
  resources :products
end
