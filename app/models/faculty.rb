class Faculty < ApplicationRecord
  belongs_to :faculty_type

  def full_name
    full_name = "#{first_name} #{last_name}"
    return full_name
  end
end
