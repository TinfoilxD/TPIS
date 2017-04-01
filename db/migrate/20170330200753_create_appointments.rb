class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.datetime :start
      t.datetime :end
      t.integer :candidate_id
      t.integer :faculty_id

      t.timestamps
    end
  end
end
