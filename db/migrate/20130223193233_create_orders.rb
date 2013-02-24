class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :contractor_id
      t.date :date_order
      t.date :date_delivery
      t.integer :state
      t.string :number

      t.timestamps
    end
  end
end
