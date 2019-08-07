Rails.application.routes.draw do
  get '/welcome/:first_name', to: 'welcome#index'
  root 'welcome#index'
  get '/home/:id', to: 'home#index'

  resources :gossips, only: [:new, :create, :edit, :update]
  resources :user, only: [:index]
  resources :contact, only: [:index]
  resources :team, only: [:index]
  resources :home
  resources :gossip_url, only: [:show]
  resources :profile, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
