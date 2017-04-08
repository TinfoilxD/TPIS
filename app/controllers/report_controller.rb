class ReportController < ApplicationController
    def index
    end

  # GET /courses/new
  def sample_action

  end

  # GET /courses/1/edit
  def edit
  end

  def apply
    parsed_start_time = Date.strptime(params[:start],"%m/%d/%Y")
    parsed_end_time = Date.strptime(params[:end],"%m/%d/%Y")
    formatted_start_time = parsed_start_time.strftime("%Y-%m-%d")
    formatted_end_time = parsed_end_time.strftime("%Y-%m-%d")
    # @appointments = Appointment.where(:start => formatted_start_time.to_date.beginning_of_day..formatted_end_time.to_date.end_of_day)
    # #render :json => @appointments
  #candidate:firstname,lastname, application_form.courses.course_type, faculty:name, appointment:start, end
    sql_statement = "SELECT candidates.first_name as cfn, "\
                    "candidates.last_name as cln, "\
                    "faculties.first_name as ffn, "\
                    "faculties.last_name as fln, "\
                    "course_types.course_type as course_name, "\
                    "appointments.start, "\
                    "appointments.end "\
                    "FROM appointments INNER JOIN faculties ON appointments.faculty_id = faculties.id "\
                    "INNER JOIN application_forms ON appointments.application_form_id = application_forms.id "\
                    "INNER JOIN candidates ON application_forms.candidate_id = candidates.id "\
                    "INNER JOIN courses ON application_forms.course_id = courses.id "\
                    "INNER JOIN course_types ON courses.course_type_id = course_types.id "\
                    "WHERE appointments.start BETWEEN '#{formatted_start_time}' AND '#{formatted_end_time}'"
    results = ActiveRecord::Base.connection.execute(sql_statement)
    render :json => results
  end

  def candidates_by_month

  end
  def candidates_by_allignment_type

  end
end
