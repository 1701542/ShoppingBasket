class BasketProductsController < ApplicationController
	
	def add_item(product_id)
		if Basket.first.nil?
			Basket.create()
		basket_product.create(:quantity => 1, :productid => product_id)
	end
	
	def create
	
	end
end
