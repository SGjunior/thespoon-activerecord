Rails.application.routes.draw do



  # CRUD



  # resources :restaurants, only: [:show, :index] # gives only show and index ressource
  # resources :restaurants, except: [:show, :index] # gives all but show and index ressources
  resources :restaurants #writting this line is the samething as writting lines 12 to 39 !!

  # # CREATE

  #     # CREATE - Get a form
  #     get 'restaurants/new', to: 'restaurants#new'

  #     # CREATE - a new restaurant
  #     post 'restaurants', to: 'restaurants#create'

  # # READ

  #     # READ - an individual retaurant.
  #     get 'restaurants/:id', to: 'restaurants#show'

  #     # READ - a list of restaurants.
  #     get 'restaurants', to: 'restaurants#index'

  # # UPDATE

  #     # UPDATE - Get a form
  #     get 'restaurants/:id/edit', to: 'restaurants#edit'

  #     # UPDATE - an updated restaurant
  #     patch 'restaurants/:id', to: 'restaurants#update'

  # # DESTROY

  #     # DESTROY - a given restaurant
  #       delete 'restaurants/:id', to: 'restaurants#destroy'

end
