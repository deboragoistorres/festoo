Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages#home'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :products do
    resources :bookings
  end
end
