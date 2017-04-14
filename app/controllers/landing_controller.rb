class LandingController < ApplicationController
  before_action :authenticate_user!
  def default_landing
    redirect_to pathing_path
  end
  def candidate_landing
    @current_candidate = Candidate.where(email: current_user.email).first
    if !@current_candidate
      redirect_to new_candidate_path
    end
  end
  def system_admin_landing

  end
  def tcf_admin_landing
    @current_faculty = Faculty.where(email: current_user.email).first
    if !@current_faculty
      redirect_to new_faculty_path
    end

    @current_faculty = Faculty.where(email: current_user.email).first
    if(@current_faculty)
      @appointments = Appointment.where('faculty_id = ? AND start BETWEEN ? AND ?', @current_faculty.id, Time.now, Time.now + 2.weeks).order(:start)
    end
  end
  def tcf_landing

    end

  def error
    params.permit(:error_message)
    if params.has_key?(:error_message)
      @error_message = evaluate_error_message(params[:error_message])
    else
      @error_message = 'Sorry. This page has encountered an error.'
    end
  end

  #lists the possible error messages in order to not put too much information in the url.
  def evaluate_error_message(error_code)
    case error_code
      when '0' then
        return 'We did not find a candidate profile matching your account. Please fill out your candidate profile first.'
      when '1' then
        return 'We did not find a faculty profile matching your account. Please fill out your faculty profile first.'
      when '2' then
        return 'We did not find the application form you are creating an appointment for.'
      else
        return 'Sorry. This page has encountered an error.'
    end
    else
  end
end