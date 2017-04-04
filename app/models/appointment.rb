class Appointment < ApplicationRecord
  belongs_to :application_form
  has_one :faculty
end
