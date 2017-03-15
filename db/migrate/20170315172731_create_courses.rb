class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.integer :course_type_id
      t.date :course_start_date
      t.string :course_address
      t.string :course_city
      t.string :state
      t.string :country
      t.string :course_zipcode

      t.timestamps
    end
  end
end
