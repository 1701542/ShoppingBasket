class RemoveFieldNameFromBasketProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :basket_products, :basket_id, :integer
  end
end
