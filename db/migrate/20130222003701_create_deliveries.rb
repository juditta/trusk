class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.integer :contractor_id
      t.date :date_delivery
      t.date :date_order
      t.string :number
      t.integer :state

      t.timestamps
    end
  end
end
