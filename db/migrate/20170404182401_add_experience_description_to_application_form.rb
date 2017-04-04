class AddExperienceDescriptionToApplicationForm < ActiveRecord::Migration[5.0]
  def change
    add_column :application_forms, :experience_description, :string
  end
end
