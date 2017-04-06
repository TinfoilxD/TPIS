class AddCityToCandidate < ActiveRecord::Migration[5.0]
  def change
    add_column :candidates, :city, :string
  end
end
