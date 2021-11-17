Rails.application.routes.draw do

  get '/auth/:provider/callback', to: 'travelers#create'

  post '/logout' => 'sessions#destroy'

  resources :sessions, only: [:new, :create, :destroy]
  resources :travelers, only: [:new, :create, :show]
  resources :trips
  resources :locations

  root 'welcome#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
