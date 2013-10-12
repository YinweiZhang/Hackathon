class RestaurantsController < ApplicationController
	def create 
		user = User.find_by_username(session[:user])
		@restaurant = Restaurant.new(params[:restaurant], :user_id => user.id)

		if @restaurant.save
			redirect_to restaurant_url(@restaurant)
			#should implement edit_restaurant_url
		else
			flash[:errors] = @restaurant.errors.full_messages
			render "new"
		end
	end

	def index
		@restaurants = Restaurant.all

		render 'index'
	end

	def new
		@restaurant = Restaurant.new
	end

	def show
		#should implement id check
		@restaurant = Restaurant.find(params[:id])
		render 'show'
	end
	#may need search bar
end
