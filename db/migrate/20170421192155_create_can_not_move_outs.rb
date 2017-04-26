class CreateCanNotMoveOuts < ActiveRecord::Migration[5.0]
  def change
    create_table :can_not_move_outs do |t|
      t.string :CompanyName
      t.text :Equipment
      t.string :Reason

      t.timestamps
    end
  end
end
