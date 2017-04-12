class AddCourseStateDateToApplicationForms < ActiveRecord::Migration[5.0]
  def change
    add_column :application_forms, :course_start_date, :date
  end
end
