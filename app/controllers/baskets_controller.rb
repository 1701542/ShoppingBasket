class BasketsController < ApplicationController

	def index
		@baskets = Basket.all
	end
	
end
