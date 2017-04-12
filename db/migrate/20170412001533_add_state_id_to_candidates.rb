class AddStateIdToCandidates < ActiveRecord::Migration[5.0]
  def change
    add_column :candidates, :state_id, :integer
  end
end
