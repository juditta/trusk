class CreateTypeContractors < ActiveRecord::Migration
  def change
    create_table :type_contractors do |t|
      t.string :name

      t.timestamps
    end
  end
end
