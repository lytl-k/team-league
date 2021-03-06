Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'login#index'
  post '/login',                to: 'login#create'

  get '/home',                  to: 'home#index'

  resources :users
  resources :teams
  resources :games
  resources :tournaments do
    post :generate, on: :collection
  end

  post 'logout',                to: 'home#logout'
end
