class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.string :TicketNo
      t.string :CompantName
      t.string :CustomerName
      t.string :Hundler
      t.text :Description
      t.integer :ResponseTime
      t.string :Status

      t.timestamps
    end
  end
end
