class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :name
      t.integer :group_position
      t.decimal :rate, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
