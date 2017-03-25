class RenameFacultyTypeToFtid < ActiveRecord::Migration[5.0]
  def change
    rename_column :faculties, :faculty_type, :faculty_type_id
  end
end
