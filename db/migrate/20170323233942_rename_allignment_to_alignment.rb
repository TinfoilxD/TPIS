class RenameAllignmentToAlignment < ActiveRecord::Migration[5.0]
  def change
    rename_table :AlignmentType, :alignment_types
  end
end
