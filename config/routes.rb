Rails.application.routes.draw do

  root to: 'dogs#index'
  get '/new', to: 'dogs#new'
  post '/', to: 'dogs#create'
  get '/dogs/:id',    to: 'dogs#show'
  get '/dogs/:id/edit', to: 'dogs#edit'
  put '/dogs/:id', to: 'dogs#update'



  # get '/',              to: 'cities#index'
  # get '/new',           to: 'cities#new'
  # post '/',             to: 'cities#create'
  # get '/cities/:id',    to: 'cities#show'
  # get '/cities/:id/edit', to: 'cities#edit'
  # put '/cities/:id', to: 'cities#update'
  # delete '/cities/:id', to: 'cities#delete'

end
