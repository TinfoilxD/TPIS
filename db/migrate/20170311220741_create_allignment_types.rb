class CreateAllignmentTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :alignment_types do |t|
      t.string :alignment_type
      t.string :abbrev

      t.timestamps
    end
  end
end
