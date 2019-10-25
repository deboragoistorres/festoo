Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :products do
    resources :bookings
  end

  get "contato", to: "pages#contact", as: :contact
  get "sobre", to: "pages#about", as: :about

end
