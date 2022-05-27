Rails.application.routes.draw do
  devise_for :users
  root to: 'yachts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: :show
  resources :yachts, except: :index do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, except: [:new, :create]
end
