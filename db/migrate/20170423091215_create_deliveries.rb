class CreateDeliveries < ActiveRecord::Migration[5.0]
  def change
    create_table :deliveries do |t|
      t.string :Ticketno
      t.date :Date
      t.string :StoreIn

      t.timestamps
    end
  end
end
