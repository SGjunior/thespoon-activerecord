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

## $`rails db:create`
* _create the DB_

## $`rails db:migrate`
* _run all the migrations for the DB_

## $`rails console`  / $`rails c`
* _loads up your current environnement in the console_
* allows you to interact with the db with AR

## $ `rails g migration AddRatingToRestaurant rating:Integer`
* _creates a new migration to the DB_
* _add the rating column to the restaurant model_
* _run `rails db:migrate` after you create the migration for it to take effect_

