class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [ :show, :edit, :update, :destroy ]

  def index
    @restaurants = Restaurant.all
  end

  def show
    # @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    # redirect_to prefix_path
    redirect_to restaurant_path(@restaurant)
  end

  def edit
    # @restaurant = Restaurant.find(params[:id])
  end

  def update
    # Find the restaurant you want to update
    # @restaurant = Restaurant.find(params[:id])
    # Update the restaurant
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    # Find restaurant to be destroyed
    # @restaurant = Restaurant.find(params[:id])
    # Destroy it!
    @restaurant.destroy
    # redirect_to someprefix_path
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
