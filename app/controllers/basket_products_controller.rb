class BasketProductsController < ApplicationController	
	def quantity_add
		@basket_product = BasketProduct.find(params[:id])
		@basket_product.quantity += 1
		@basket_product.save
		
		redirect_to @basket_product.product
	end
	
	def quantity_reduce
		@basket_product = BasketProduct.find(params[:id])
		if @basket_product.quantity > 0
			@basket_product.quantity -= 1
		end
		@basket_product.save
		
		redirect_to @basket_product.product
	end
	
	def destroyall
		BasketProduct.delete_all
		
		redirect_to BasketProduct
	end
	
	def index
		@basket_products = BasketProduct.all
	end
	
	def show
		@basket_product = BasketProduct.find(params[:id])
	end

	
	def new
		@basket_product = BasketProduct.new
	end
	
	def create
		product = Product.find(params[:product_id])
		
		if BasketProduct.where(:product => product).any?
			@basket_product = BasketProduct.find_by(product: product.id)
			@basket_product.quantity += 1
		else
			@basket_product = BasketProduct.new
			@basket_product.product = product
			@basket_product.quantity = 1
		end
		
		@basket_product.save
		redirect_to BasketProduct
	end
	
	def destroy
		@basket_product = BasketProduct.find(params[:id])
		@basket_product.destroy
		
		redirect_to basket_products_path
	end
	
	private
		def basket_product_params
			params.require(:product, :quantity)
		end
end
