class RemoveVatFromDeliveryProducts < ActiveRecord::Migration
  def up
    remove_column :delivery_products, :vat
  end

  def down
    add_column :delivery_products, :vat, :integer
  end
end
