class AddImageToScraps < ActiveRecord::Migration[5.1]
  def change
    add_column :scraps, :image, :attachment
  end
end
