class ApplicationForm < ApplicationRecord
  belongs_to :training_center
  belongs_to :course
  belongs_to :candidate
end
