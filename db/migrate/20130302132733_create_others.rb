class CreateOthers < ActiveRecord::Migration
  def change
    create_table :others do |t|
      t.string :symbol
      t.string :name
      t.integer :unit_id
      t.decimal :value, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
