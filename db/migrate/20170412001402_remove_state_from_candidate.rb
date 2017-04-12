class RemoveStateFromCandidate < ActiveRecord::Migration[5.0]
  def change
    remove_column :candidates, :state, :string
  end
end
