class Product < ApplicationRecord
	has_many :basket_product, dependent: :destroy
end
