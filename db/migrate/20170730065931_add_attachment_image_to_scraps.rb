class AddAttachmentImageToScraps < ActiveRecord::Migration[5.1]
  def self.up
    change_table :scraps do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :scraps, :image
  end
end
