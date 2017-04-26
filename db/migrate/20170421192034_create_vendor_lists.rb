class CreateVendorLists < ActiveRecord::Migration[5.0]
  def change
    create_table :vendor_lists do |t|
      t.string :Name
      t.string :Tel
      t.string :WorkTime
      t.string :Type

      t.timestamps
    end
  end
end
