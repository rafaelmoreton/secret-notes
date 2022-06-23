class AddIndexToUser < ActiveRecord::Migration[7.0]
  def change
    add_index :users, :username, unique: true, name: "index_users_on_username"
  end
end
