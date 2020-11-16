class BasketProduct < ApplicationRecord
	belongs_to :product
	
	def total_price
		self.quantity * self.product.price
	end
end
