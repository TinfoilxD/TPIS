class CreateAllignmentTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :allignment_types do |t|
      t.string :allignment_type
      t.string :abbrev

      t.timestamps
    end
  end
end
