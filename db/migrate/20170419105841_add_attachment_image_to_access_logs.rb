class AddAttachmentImageToAccessLogs < ActiveRecord::Migration
  def self.up
    change_table :access_logs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :access_logs, :image
  end
end
