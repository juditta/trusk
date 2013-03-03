class CreateSpecyfications < ActiveRecord::Migration
  def change
    create_table :specyfications do |t|
      t.integer :product_id
      t.integer :type_specific_id
      t.integer :specific_id
      t.decimal :quantity, :precision => 8, :scale => 2

      t.timestamps
    end
    add_index :specyfications , [:product_id], :name => 'index_specfications_on_product_id'
    add_index :specyfications , [:type_specific_id ], :name => 'index_specfications_on_type_specific_id'
    add_index :specyfications , [:specific_id ], :name => 'index_specfications_on_specific_id'
  end
end
