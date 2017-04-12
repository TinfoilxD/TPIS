class DropTableCourses < ActiveRecord::Migration[5.0]
  def change
    drop_table :Courses

  end
end
