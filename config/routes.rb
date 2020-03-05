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

  get '/teams',           to: 'teams#index'
  get '/teams/new',       to: 'teams#new'
  get '/teams/:id',       to: 'teams#show'
  post '/teams',          to: 'teams#create'
  get '/teams/:id/edit',  to: 'teams#edit'
  patch '/teams/:id',     to: 'teams#update'
  delete '/teams/:id',    to: 'teams#delete'
end
