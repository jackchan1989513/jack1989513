class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :Name
      t.text :Authorization
      t.text :Second
      t.text :Other
      t.string :Phone
      t.string :Email
      t.string :Rack

      t.timestamps
    end
  end
end
