class CreateBasketProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :basket_products do |t|
      t.integer :quantity
      t.integer :productid
      t.references :basket, null: false, foreign_key: true

      t.timestamps
    end
  end
end
