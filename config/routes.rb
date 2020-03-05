Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'login#index'
  post '/login',          to: 'login#create'

  get '/home',            to: 'home#index'

  get '/users',           to: 'users#index'
  get '/users/new',       to: 'users#new'
  get '/users/:id',       to: 'users#show'
  post '/users',          to: 'users#create'
  get '/users/:id/edit',  to: 'users#edit'
  patch '/users/:id',     to: 'users#update'
  delete '/users/:id',    to: 'users#delete'
end
