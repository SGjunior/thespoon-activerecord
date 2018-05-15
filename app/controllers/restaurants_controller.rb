class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
    #set_restaurant -> this is called by the before_action
  end

  def new
    # Rendering the form
    @restaurant = Restaurant.new

  end

  def create

    # Creating in the DB
    @restaurant = Restaurant.new(restaurant_filter_params)
    # Add validation
    @restaurant.save

    redirect_to restaurant_path(@restaurant)
  end

  def edit
    # Rendering the form
    #set_restaurant -> this is called by the before_action
  end

  def update
    #set_restaurant -> this is called by the before_action
    @restaurant.update(restaurant_filter_params)
    redirect_to restaurants_path
  end

  def destroy
    #set_restaurant -> this is called by the before_action
    @restaurant.delete
    redirect_to restaurants_path
  end

  private

  def restaurant_filter_params
    # SECURITY -
    # someone could modify the html form and add sensitive key/value pairs.
    # this filters the received params by allowing only a specific set of attributes.
    params.require(:restaurant).permit(:name, :address, :rating)
  end

  def set_restaurant
    # set restaurant by id
    @restaurant = Restaurant.find(params[:id])
  end


end
