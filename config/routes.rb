Rails.application.routes.draw do

  root to: 'dogs#index'
  get '/new', to: 'dogs#new'
  post '/', to: 'dogs#create'
  get '/dogs/:id',    to: 'dogs#show'
  get '/dogs/:id/edit', to: 'dogs#edit'
  put '/dogs/:id', to: 'dogs#update'
  delete '/dogs/:id', to: 'dogs#delete'

end
