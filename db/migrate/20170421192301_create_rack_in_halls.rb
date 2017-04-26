class CreateRackInHalls < ActiveRecord::Migration[5.0]
  def change
    create_table :rack_in_halls do |t|
      t.string :RackNo
      t.string :CompanyName
      t.text :Equipment

      t.timestamps
    end
  end
end
