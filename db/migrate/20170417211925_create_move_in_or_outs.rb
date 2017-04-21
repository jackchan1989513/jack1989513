class CreateMoveInOrOuts < ActiveRecord::Migration[5.0]
  def change
    create_table :move_in_or_outs do |t|
      t.text :Equipment
      t.string :IP
      t.string :InOrOut
      t.string :Date

      t.timestamps
    end
  end
end
