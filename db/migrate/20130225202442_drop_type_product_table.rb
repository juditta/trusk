class DropTypeProductTable < ActiveRecord::Migration
  def up
  	drop_table :type_products
  end

  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
