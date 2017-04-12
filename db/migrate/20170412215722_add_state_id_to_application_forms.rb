class AddStateIdToApplicationForms < ActiveRecord::Migration[5.0]
  def change
    add_column :application_forms, :state_id, :integer
  end
end
