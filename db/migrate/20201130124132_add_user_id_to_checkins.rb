class AddUserIdToCheckins < ActiveRecord::Migration[6.0]
  def change
    add_column :checkins, :user_id, :integer
  end
end
