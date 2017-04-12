class CourseType < ApplicationRecord
  has_many :application_forms

  validates_presence_of :course_type

  def course_type_identifier(course_type_id)
    course_type = CourseType.find(course_type_id).course_type
    "#{course_type}"
  end

end
