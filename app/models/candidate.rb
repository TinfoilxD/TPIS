class Candidate < ApplicationRecord
  belongs_to :allignment_type
  has_many :experiences

  def full_name
    full_name = "#{first_name} #{last_name}"
    return full_name
  end
end
