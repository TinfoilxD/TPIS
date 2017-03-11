class RemoveAbbrevFromCandidate < ActiveRecord::Migration[5.0]
  def change
    remove_column :candidates, :abbrev
  end
end
