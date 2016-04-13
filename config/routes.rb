Rails.application.routes.draw do
  # get '/adopter_users' => 'adopter_users#index'
  # get'/adopter_users/new' => 'adopter_users#new'
  # post '/adopter_users' => 'adopter_users#create'
  # get '/adopter_users/:id' => 'adopter_users#show'
  # get '/adopter_users/:id/edit' => 'adopter_users#edit'
  # patch '/adopter_users/:id' => 'adopter_users#update'
  # delete '/adopter_users/:id' => 'adopter_users#destroy'

  # get '/shelter_users' => 'shelter_users#index'
  # get'/shelter_users/new' => 'shelter_users#new'
  # post '/shelter_users' => 'shelter_users#create'
  # get '/shelter_users/:id' => 'shelter_users#show'
  # get '/shelter_users/:id/edit' => 'shelter_users#edit'
  # patch '/shelter_users/:id' => 'shelter_users#update'
  # delete '/shelter_users/:id' => 'shelter_users#destroy'
  devise_for :users
  get '/'=> 'pets#index'
  get "/" => 'pets#index'
  get '/pets' => 'pets#index'
  get '/pets/:id' => 'pets#show'

  get '/pets_search' => 'pets#search_form'
  post '/pets_search' => 'pets#search_results'
end 

 