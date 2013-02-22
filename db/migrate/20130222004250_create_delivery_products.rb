class CreateDeliveryProducts < ActiveRecord::Migration
  def change
    create_table :delivery_products do |t|
      t.integer :delivery_id
      t.integer :product_id
      t.decimal :price
      t.integer :quantity
      t.integer :vat

      t.timestamps
    end
  end
end
