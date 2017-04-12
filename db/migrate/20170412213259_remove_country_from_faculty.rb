class RemoveCountryFromFaculty < ActiveRecord::Migration[5.0]
  def change
    remove_column :faculties, :country, :string
  end
end
