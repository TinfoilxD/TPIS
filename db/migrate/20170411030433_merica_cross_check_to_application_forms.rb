class MericaCrossCheckToApplicationForms < ActiveRecord::Migration[5.0]
  def change
    add_column :application_forms, :merica_cross_check, :boolean
  end
end
