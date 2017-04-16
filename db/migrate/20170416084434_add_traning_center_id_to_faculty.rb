class AddTraningCenterIdToFaculty < ActiveRecord::Migration[5.0]
  def change
    add_column :faculties, :training_center_id, :integer
  end
end
