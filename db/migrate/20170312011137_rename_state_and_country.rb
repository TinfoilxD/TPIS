class RenameStateAndCountry < ActiveRecord::Migration[5.0]
  def change
    rename_column :candidates, :state_id, :state
    rename_column :candidates, :country_id, :country
  end
end
