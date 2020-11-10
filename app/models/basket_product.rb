class BasketProduct < ApplicationRecord
  has_one :product
  belongs_to :basket
end
