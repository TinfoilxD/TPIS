class AddCityToFaculty < ActiveRecord::Migration[5.0]
  def change
    add_column :faculties, :city, :string
  end
end
