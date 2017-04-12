class AddCourseCityToApplicationForm < ActiveRecord::Migration[5.0]
  def change
    add_column :application_forms, :course_city, :string
  end
end
