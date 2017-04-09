class AddCourseTypeIdApplicationForms < ActiveRecord::Migration[5.0]
  def change
    add_column :application_forms, :course_type_id, :integer
  end
end
