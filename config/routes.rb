Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :products do
    resources :bookings
  end
end
