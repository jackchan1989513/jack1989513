class AddAttachmentVideoToInternalInformations < ActiveRecord::Migration
  def self.up
    change_table :internal_informations do |t|
      t.attachment :video
    end
  end

  def self.down
    remove_attachment :internal_informations, :video
  end
end
