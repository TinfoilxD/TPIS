class Rename < ActiveRecord::Migration[5.0]
  def change
    rename_column :alignment_types, :alignment_type, :alignment_type
  end
end
