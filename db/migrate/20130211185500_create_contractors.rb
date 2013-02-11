class CreateContractors < ActiveRecord::Migration
  def change
    create_table :contractors do |t|
      t.string :type
      t.string :short_name
      t.string :name
      t.integer :code
      t.string :city
      t.string :street
      t.integer :zone_id
      t.integer :pesel
      t.integer :regon
      t.integer :phone1
      t.integer :phone2
      t.integer :fax
      t.string :email
      t.string :sale
      t.integer :maturity
      t.integer :discount
      t.integer :bank_account

      t.timestamps
    end
  end
end
