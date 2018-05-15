# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## Create the controller
* `rails g controller {name} {method1} {method2}`
*

## Create the model
* `rails g model restaurant name:string address:string`
* _creates migration_
* _creates model_

## Create the DB
* _`rails db:create`_

## Run the DB migrations
* _`rails db:migrate`_

## $`rails console`  / $`rails c`
* _loads up your current environnement in the console_
* allows you to interact with the db with AR

## $ `rails g migration AddRatingToRestaurant rating:Integer`
* _creates a new migration to the DB_
* _add the rating column to the restaurant model_
* _run `rails db:migrate` after you create the migration for it to take effect_

## Generating config/routes

### 7 default routes :

`  # CREATE

      # CREATE - Get a form
      get 'restaurants/new', to: 'restaurants#new'

      # CREATE - a new restaurant
      post 'restaurants', to: 'restaurants#create'

  # READ

      # READ - an individual retaurant.
      get 'restaurants/:id', to: 'restaurants#show'

      # READ - a list of restaurants.
      get 'restaurants', to: 'restaurants#index'

  # UPDATE

      # UPDATE - Get a form
      get 'restaurants/:id/edit', to: 'restaurants#edit'

      # UPDATE - an updated restaurant
      patch 'restaurants/:id', to: 'restaurants#update'

  # DESTROY

      # DESTROY - a given restaurant
        delete 'restaurants/:id', to: 'restaurants#destroy'`

### NO need to write the out, just use

`resources :restaurants, only: [:show, :index]` # gives only show and index ressource
`resources :restaurants, except: [:show, :index]` # gives all but show and index ressources
`resources :restaurants` #writting this line is the samething as writting lines 12 to 39 !!





