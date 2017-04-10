class Course < ApplicationRecord
  belongs_to :course_type
  has_many :application_forms

  def course_identifier
    course_type = CourseType.find(course_type_id).course_type
    "#{course_type} at #{course_address} starting on #{course_start_date.strftime('%B %d, %Y')}"
  end
end
