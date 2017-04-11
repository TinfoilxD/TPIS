class CprInstructorCheckToApplicationForms < ActiveRecord::Migration[5.0]
  def change
    add_column :application_forms, :cpr_instructor_check, :boolean
  end
end
