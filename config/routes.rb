Rails.application.routes.draw do

  get '/',              to: 'cities#index'
  get '/new',           to: 'cities#new'
  post '/',             to: 'cities#create'
  get '/cities/:id',    to: 'cities#show'
  put '/cities/:id',    to: 'cities#update'



end
