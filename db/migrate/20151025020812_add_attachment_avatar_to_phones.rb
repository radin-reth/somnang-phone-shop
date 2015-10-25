class AddAttachmentAvatarToPhones < ActiveRecord::Migration
  def self.up
    change_table :phones do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :phones, :avatar
  end
end
