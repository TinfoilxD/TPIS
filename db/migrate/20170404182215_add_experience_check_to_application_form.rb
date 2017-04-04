class AddExperienceCheckToApplicationForm < ActiveRecord::Migration[5.0]
  def change
    add_column :application_forms, :experience_check, :boolean
  end
end
