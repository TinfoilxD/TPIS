class AddAlignWTpCheckToApplicationForms < ActiveRecord::Migration[5.0]
  def change
    add_column :application_forms, :align_w_tp_check, :boolean
  end
end
