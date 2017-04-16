class ApplicationForm < ApplicationRecord
  belongs_to :training_center
  belongs_to :course_type
  belongs_to :candidate
  belongs_to :state


  accepts_nested_attributes_for :course_type

  def get_course_address
    course_data = "Starts on #{course_start_date&.strftime("%m/%d/%y")} in #{course_city}, #{state&.state_code}"
    return course_data

  end




end
