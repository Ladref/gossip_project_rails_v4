Rails.application.routes.draw do
  get 'profile/:id', to: "profile#index"
  get 'gossip_url/:id', to: "gossip_url#page"
  get '/welcome/:first_name', to: 'welcome#index'
  get '/user/index'
  get '/contact',  to: 'contact#index'
  get '/team',  to: 'team#index'
  get '/home', to: 'home#index'
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
