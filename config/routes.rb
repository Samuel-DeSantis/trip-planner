Rails.application.routes.draw do

  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]

  post '/logout' => 'sessions#destroy'

  resources :travelers, except: :index
  resources :trips
  resources :countries, only: [:new, :create]

  root 'welcome#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
