class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :company
      t.string :address
      t.string :city
      t.integer :zip

      t.timestamps
    end
  end
end
