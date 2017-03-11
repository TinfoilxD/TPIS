class CreateCandidates < ActiveRecord::Migration[5.0]
  def change
    create_table :candidates do |t|
      t.integer :first_name
      t.integer :last_name
      t.string :address
      t.string :email
      t.string :phone
      t.string :fax
      t.integer :state_id
      t.string :zipcode
      t.integer :country_id
      t.integer :allignment_type_id

      t.timestamps
    end
  end
end
