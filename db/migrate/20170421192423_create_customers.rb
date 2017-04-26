class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :CompanyName
      t.string :Name
      t.string :Tel
      t.string :Idno
      t.string :Permission

      t.timestamps
    end
  end
end
