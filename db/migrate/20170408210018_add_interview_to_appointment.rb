class AddInterviewToAppointment < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :complete, :boolean, default: false
  end
end
