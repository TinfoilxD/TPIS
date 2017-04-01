class ChangeAppointmentModel < ActiveRecord::Migration[5.0]
  def change
    remove_column :appointments, :candidate_id
    add_column :appointments, :application_form_id, :integer
  end
end
