class RemoveStateFromFaculty < ActiveRecord::Migration[5.0]
  def change
    remove_column :faculties, :state, :string

  end
end
