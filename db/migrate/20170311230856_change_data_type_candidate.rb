class ChangeDataTypeCandidate < ActiveRecord::Migration[5.0]
  def change
    change_column :candidates, :first_name, :string
    change_column :candidates, :last_name, :string
  end
end
