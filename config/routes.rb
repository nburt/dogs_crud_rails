Rails.application.routes.draw do

  root 'welcome#index'
  get '/dogs', to: 'dogs#index'
  get '/dogs/new', to: 'dogs#new'
  post '/dogs', to: 'dogs#create'
  get '/dogs/:id', to: 'dogs#show'
  get '/dogs/:id/edit', to: 'dogs#edit'
  put '/dogs/:id', to: 'dogs#update'

end
