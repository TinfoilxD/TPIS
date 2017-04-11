class ApplicationForm < ApplicationRecord
  belongs_to :training_center
  belongs_to :course
  belongs_to :candidate


  accepts_nested_attributes_for :course
end
