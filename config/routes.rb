Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants
  #CRUD
  # Read All
  # get 'restaurants', to:'restaurants#index'

  # # Read 1 restaurant
  # get 'restaurants/:id', to: 'restaurants#show'

  # #Create 1 restaurant
  # get 'restaurants/new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'

  # #Update 1 Restaurant
  # get 'restaurants/:id/edit', to: 'restaurants#edit'
  # patch 'restaurants/:id', to: 'restaurants#update'

  # #Delete 1 Restaurant
  # delete 'restaurants/:id', to: 'restaurants#destroy'


end
