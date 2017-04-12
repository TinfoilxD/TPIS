class RemoveCountryFromCandidate < ActiveRecord::Migration[5.0]
  def change
    remove_column :candidates, :country, :string
  end
end
