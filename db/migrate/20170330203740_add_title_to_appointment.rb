class AddTitleToAppointment < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :title, :string
  end
end
