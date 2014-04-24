Rails.application.routes.draw do

  root 'welcome#index'
  get '/dogs', to: 'dogs#index'
  get '/dogs/new', to: 'dogs#new'
  post '/dogs', to: 'dogs#create'

end
