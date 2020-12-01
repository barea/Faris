class AddStoreIdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :store_id, :integer
  end
end
