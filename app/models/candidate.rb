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
    @cid = candidate.id # Grab Candidate ID
    if ApplicationForm.exists?(:candidate_id => @cid) # Does an App form with their id exist?
      true
    else # if no app form exists exit down below
      false
    end
  end

  # Check if candidate has appointment
  def appointment?(candidate)
    @candidate = candidate.id # Grab Candidate ID

    if candidate.application?(candidate) == true #Call application function above
      @pp = ApplicationForm.where(candidate_id: candidate) # Find Appliation Form with Candidate ID

      # Loop to check if appointment with App ID exists
      if Appointment.exists?(:application_form_id => @pp) == true
        true
      else # No appointment with APP id exit and return false
        false
      end
    else # false if application? returns false
      false
    end
  end

end

