class Appointment < ApplicationRecord
  belongs_to :application_form
  has_one :faculty

  def get_candidate(appointment)

    @app = appointment.application_form_id
    @fid = ApplicationForm.find(@app)
    @cid = @fid.candidate_id
    @can = Candidate.find(@cid)
    @can.full_name

  end

  def get_faculty(appointment)

    @aid = appointment.faculty_id
    @faculty = Faculty.find(@aid)
    @fname = @faculty.full_name
  end
end
