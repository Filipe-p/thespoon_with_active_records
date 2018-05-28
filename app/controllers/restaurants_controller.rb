class RestaurantsController < ApplicationController

	before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

	def index
		#show all, getting from DB
		@restaurants = Restaurant.all
	end

	def show
		#get 1 restaurant using id from param
	end

	def new
		#render form, with the new restaurant object
		@restaurant = Restaurant.new
	end
	
	def create
		#make it persistent and redirect
    	@restaurant = Restaurant.new(restaurant_params)
    	@restaurant.save
    	redirect_to restaurant_path(@restaurant)
	end

	def edit
		#rendering form, with object identified using id from params		
	end

	def update
		#identify which object we are manipulating
		# make it persistent using our strong params
		# we redirect
		@restaurant.update(restaurant_params)
		redirect_to restaurant_path(@restaurant)
	end

	def destroy
		#identify which object to destroy
		#make destruction persistent
	    @restaurant.destroy

	    # no need for app/views/restaurants/destroy.html.erb
	    redirect_to restaurants_path
		
	end

	private
	def restaurant_params
		params.require(:restaurant).permit(:name, :address, :description, :rating)
	end

	def set_restaurant
    	@restaurant = Restaurant.find(params[:id])
  	end
end
