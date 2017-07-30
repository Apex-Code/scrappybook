class AddUserIdToPins < ActiveRecord::Migration[5.1]
  def change
    add_column :scraps, :user_id, :integer
  end
end
