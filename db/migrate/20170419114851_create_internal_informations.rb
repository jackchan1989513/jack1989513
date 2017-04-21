class CreateInternalInformations < ActiveRecord::Migration[5.0]
  def change
    create_table :internal_informations do |t|
      t.string :Title

      t.timestamps
    end
  end
end
