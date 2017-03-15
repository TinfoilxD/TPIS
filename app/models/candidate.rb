class Candidate < ApplicationRecord
  belongs_to :allignment_type
  has_many :experiences
end
