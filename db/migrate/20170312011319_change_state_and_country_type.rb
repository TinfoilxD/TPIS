class ChangeStateAndCountryType < ActiveRecord::Migration[5.0]
  def change
    change_column :candidates, :state, :string
    change_column :candidates, :country, :string
  end
end
