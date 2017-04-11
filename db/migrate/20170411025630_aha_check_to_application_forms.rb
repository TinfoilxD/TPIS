class AhaCheckToApplicationForms < ActiveRecord::Migration[5.0]
  def change
    add_column :application_forms, :aha_check, :boolean
  end
end
