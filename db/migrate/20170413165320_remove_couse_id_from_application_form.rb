class RemoveCouseIdFromApplicationForm < ActiveRecord::Migration[5.0]
  def change
    remove_column :application_forms, :course_id, :integer
  end
end
