class AddStateIdToFaculty < ActiveRecord::Migration[5.0]
  def change
    add_column :faculties, :state_id, :integer
  end
end
