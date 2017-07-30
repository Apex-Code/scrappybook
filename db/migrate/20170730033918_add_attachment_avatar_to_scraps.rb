class AddAttachmentAvatarToScraps < ActiveRecord::Migration[5.1]
  def self.up
    change_table :scraps do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :scraps, :avatar
  end
end
