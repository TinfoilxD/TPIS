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

  # Check if Candidate Has Application Form
  def application?(candidate)
    @cid = candidate.id
    if ApplicationForm.exists?(:candidate_id => @cid)
      true
    else
      false
    end
  end

  def appointment?(candidate)
    @candidate = candidate.id

    if candidate.application?(candidate) == true
      @pp = ApplicationForm.where(candidate_id: candidate)

      if Appointment.exists?(:application_form_id => @pp) == true
        true
      else
        false
      end
    else
      false
    end
  end

end

