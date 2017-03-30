class ChangeAlignmentSpelling < ActiveRecord::Migration[5.0]
  def change
    change_table :candidates do |t|
      t.rename :alignment_type_id, :alignment_type_id

    end
  end
end
