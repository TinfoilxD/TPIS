class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.string :experience_description
      t.integer :candidate_id
      t.timestamps
    end
  end
end
