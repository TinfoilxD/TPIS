class Candidate < ApplicationRecord
  belongs_to :alignment_type
  has_many :experiences
  
  
   validates :first_name, presence: true
   validates :last_name, presence: true
   validates :email, presence: true
   validates :phone, :numericality => {:only_integer => true}
   validates :fax, :numericality => {:only_integer => true}
   validates :zipcode, :numericality => {:only_integer => true}, length: {is: 5}
   
  

  def full_name
    full_name = "#{first_name} #{last_name}"
    return full_name
  end
end

