class AddCommentsToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :comments, :string
  end
end
