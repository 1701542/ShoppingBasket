class Product < ApplicationRecord
	has_many :basket_product, dependent: :destroy
	validates :name, presence: true
	validates :price, presence: true
end
