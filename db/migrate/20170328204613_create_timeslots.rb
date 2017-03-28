class CreateTimeslots < ActiveRecord::Migration[5.0]
  def change
    create_table :timeslots do |t|
      t.datetime :start
      t.datetime :end
      t.integer :faculty_id

      t.timestamps
    end
  end
end
