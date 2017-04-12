class ApplicationForm < ApplicationRecord
  belongs_to :training_center
  belongs_to :course
  belongs_to :course_type
  belongs_to :candidate


  accepts_nested_attributes_for :course
  accepts_nested_attributes_for :course_type
end
