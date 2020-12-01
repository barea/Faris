class RemoveStoreIdFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :store_id, :integer
  end
end
