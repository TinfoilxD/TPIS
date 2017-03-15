class ChangeApplicationFormColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :application_forms, :boolean
    change_column :application_forms, :class_availability, :boolean
    rename_column :application_forms, :class_availability, :public_class_availability
    change_column :application_forms, :aha_form_agreement, :boolean
  end
end
