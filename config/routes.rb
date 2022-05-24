Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, except: [:destroy] do
    resources :bookings, except: [:destroy]
    resources :yachts, except: [:destroy]
  end
  resources :users, only: :destroy
  resources :bookings, only: :destroy
  resources :yachts, only: :destroy
end
