class Candidate < ApplicationRecord
  belongs_to :alignment_type
  has_many :experiences
  has_many :application_forms
  
  
   validates :first_name, presence: true
   validates :last_name, presence: true
   validates :email, presence: true
   validates :phone, presence: true


  

  def full_name
    full_name = "#{first_name} #{last_name}"
    return full_name
  end

  def has_application?(candidate)
    if ApplicationForm.exists?(candidate)
      true
    else
      false
    end
  end



  def has_appointment?(candidate)

    if candidate.has_application?(candidate) then
      if Appointment.exists?(ApplicationForm.find(candidate))
        true
      else
        false
      end
    else
      false
    end

  end

end

