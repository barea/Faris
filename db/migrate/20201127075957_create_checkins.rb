class CreateCheckins < ActiveRecord::Migration[6.0]
  def change
    create_table :checkins do |t|
      t.integer :store_id
      t.integer :costumer_id
      t.float :temp
      t.date :datetime

      t.timestamps
    end
  end
end
