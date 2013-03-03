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
      t.decimal :quantity_price, :precision => 8, :scale => 2, :null => false
      t.decimal :retial_price,   :precision => 8, :scale => 2, :null => false
      t.decimal :price_a,        :precision => 8, :scale => 2, :null => false
      t.decimal :price_b,        :precision => 8, :scale => 2, :null => false
      t.decimal :state_min,      :precision => 8, :scale => 2, :null => false
      t.decimal :state_max,      :precision => 8, :scale => 2, :null => false
      t.decimal :state,          :precision => 8, :scale => 2, :null => false
      t.integer :spree_products_id

      t.timestamps
    end
  end
end
