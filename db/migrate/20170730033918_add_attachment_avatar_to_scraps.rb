class AddAttachmentAvatarToScraps < ActiveRecord::Migration
  def self.up
    change_table :scraps do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :scraps, :avatar
  end
end
