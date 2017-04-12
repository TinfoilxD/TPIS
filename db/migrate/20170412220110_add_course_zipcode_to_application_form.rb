class AddCourseZipcodeToApplicationForm < ActiveRecord::Migration[5.0]
  def change
    add_column :application_forms, :course_zipcode, :string
  end
end
