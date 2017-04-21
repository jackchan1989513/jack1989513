class CreateAccessLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :access_logs do |t|
      t.string :DateAndCompany

      t.timestamps
    end
  end
end
