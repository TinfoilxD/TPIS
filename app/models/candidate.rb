class Candidate < ApplicationRecord
  belongs_to :alignment_type
  has_many :experiences
  
  
   validates :first_name, presence: true
   validates :last_name, presence: true
   validates :email, presence: true
   validates :phone, presence: true


  

  def full_name
    full_name = "#{first_name} #{last_name}"
    return full_name
  end
end

