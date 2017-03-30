class AddTitleToTimeslot < ActiveRecord::Migration[5.0]
  def change
    add_column :timeslots, :title, :string
  end
end
