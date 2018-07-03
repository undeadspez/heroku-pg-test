Rails.application.routes.draw do

  root 'animals#index'
  get '/index', to: 'animals#index'

  resource :animals

  get  '/new',    to: 'animals#new'
  post '/add',    to: 'animals#create'
  get  '/delete', to: 'animals#delete' 

end
