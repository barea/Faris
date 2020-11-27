class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.integer :user_id
      t.string :name
      t.text :location
      t.text :link

      t.timestamps
    end
  end
end
