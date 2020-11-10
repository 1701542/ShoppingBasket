class BasketsController < ApplicationController

	def index
		@baskets = Basket.all
	end
	
	def new
		
	end
	
	def create
		@basket = Basket.new
			
		if(@basket.save)
			render 'index'
		else
			redirect_to controller: 'products'
		end
	end
	helper_method :create
end
