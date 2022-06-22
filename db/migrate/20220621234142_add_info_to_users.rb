class AddInfoToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string, index: true, null: false, default: ""
  end
end
