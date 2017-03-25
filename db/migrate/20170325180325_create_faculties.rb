class CreateFaculties < ActiveRecord::Migration[5.0]
  def change
    create_table :faculties do |t|
      t.string :first_name
      t.string :last_name
      t.integer :faculty_type
      t.string :email
      t.string :phone
      t.string :office_address
      t.string :state
      t.string :zip_code
      t.string :country

      t.timestamps
    end
  end
end
