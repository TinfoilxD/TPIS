class CreateTrainingCenters < ActiveRecord::Migration[5.0]
  def change
    create_table :training_centers do |t|
      t.string :training_center_name
      t.string :primary_contact
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
