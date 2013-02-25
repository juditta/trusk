class RemoveTypeProductFromProducts < ActiveRecord::Migration
  def up
    remove_column :products, :type_product
  end

  def down
    add_column :products, :type_product, :string
  end
end
