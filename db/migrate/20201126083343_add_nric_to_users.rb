class AddNricToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nric, :int
  end
end
