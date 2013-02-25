class CreateTypeProducts < ActiveRecord::Migration
  def change
    create_table :type_products do |t|
      t.string :name

      t.timestamps
    end
  end
end
