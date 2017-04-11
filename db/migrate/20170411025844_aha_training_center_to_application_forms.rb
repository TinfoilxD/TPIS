class AhaTrainingCenterToApplicationForms < ActiveRecord::Migration[5.0]
  def change
    add_column :application_forms, :aha_training_canter, :string
  end
end
