class AddOccupationToCandidates < ActiveRecord::Migration[5.0]
  def change
    add_column :candidates, :occupation, :string
  end
end
