class CreateTypeSpecifics < ActiveRecord::Migration
  def change
    create_table :type_specifics do |t|
      t.string :name

      t.timestamps
    end
    add_index :type_specifics, [:name],         :name => 'index_type_specifics_on_name'
  end
end
