class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :symbol
      t.string :name
      t.decimal :rate, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
