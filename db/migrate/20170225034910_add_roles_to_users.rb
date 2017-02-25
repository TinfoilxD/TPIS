class AddRolesToUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :first_name
    remove_column :users, :last_name
    add_column :users, :role, :integer
  end
end
