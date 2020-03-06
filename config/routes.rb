Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'login#index'
  post '/login',                to: 'login#create'

  get '/home',                  to: 'home#index'

  get '/users',                 to: 'users#index'
  get '/users/new',             to: 'users#new'
  get '/users/:id',             to: 'users#show'
  post '/users',                to: 'users#create'
  get '/users/:id/edit',        to: 'users#edit'
  patch '/users/:id',           to: 'users#update'
  delete '/users/:id',          to: 'users#delete'

  get '/teams',                 to: 'teams#index'
  get '/teams/new',             to: 'teams#new'
  get '/teams/:id',             to: 'teams#show'
  post '/teams',                to: 'teams#create'
  get '/teams/:id/edit',        to: 'teams#edit'
  patch '/teams/:id',           to: 'teams#update'
  delete '/teams/:id',          to: 'teams#delete'

  get '/games',                 to: 'games#index'
  get '/games/new',             to: 'games#new'
  get '/games/:id',             to: 'games#show'
  post '/games',                to: 'games#create'
  get '/games/:id/edit',        to: 'games#edit'
  patch '/games/:id',           to: 'games#update'
  delete '/games/:id',          to: 'games#delete'

  get '/tournaments',           to: 'tournaments#index'
  get '/tournaments/new',       to: 'tournaments#new'
  get '/tournaments/:id',       to: 'tournaments#show'
  post '/tournaments',          to: 'tournaments#create'
  get '/tournaments/:id/edit',  to: 'tournaments#edit'
  patch '/tournaments/:id',     to: 'tournaments#update'
  delete '/tournaments/:id',    to: 'tournaments#delete'
end
