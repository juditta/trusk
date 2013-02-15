class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :type_product
      t.string :index
      t.string :name
      t.integer :measure
      t.integer :unit_basic
      t.integer :unit_sale
      t.integer :converter
      t.integer :vat
      t.integer :barcode
      t.integer :expiration_date
      t.decimal :quantity_price
      t.decimal :retial_price
      t.decimal :price_a
      t.decimal :price_b
      t.decimal :state_min
      t.decimal :state_max
      t.decimal :state
      t.integer :spree_products_id

      t.timestamps
    end
  end
end
