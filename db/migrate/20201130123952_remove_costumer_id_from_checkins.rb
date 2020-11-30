class RemoveCostumerIdFromCheckins < ActiveRecord::Migration[6.0]
  def change
    remove_column :checkins, :costumer_id, :integer
  end
end
