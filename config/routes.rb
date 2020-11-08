require 'sidekiq/web'

Rails.application.routes.draw do
  resources :payments
  resources :outgoinginvoices
  resources :documents
  resources :incominginvoices
  resources :customers
  resources :customercategories
  resources :products
  resources :brands
  resources :productcategories
  resources :suppliers
  namespace :admin do
    resources :users
    resources :services
    resources :announcements
    resources :notifications
    root to: 'users#index' # <--- Root route
  end
  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
