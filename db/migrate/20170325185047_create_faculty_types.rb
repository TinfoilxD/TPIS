class CreateFacultyTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :faculty_types do |t|
      t.string :job_title

      t.timestamps
    end
  end
end
