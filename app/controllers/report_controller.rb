class ReportController < ApplicationController


  # GET /courses/new
  def index
  end

  # GET /courses/1/edit
  def edit
  end

  def apply
    parsed_start_time = Date.strptime(params[:start],"%m/%d/%Y")
    parsed_end_time = Date.strptime(params[:end],"%m/%d/%Y")
    formatted_start_time = parsed_start_time.strftime("%Y-%m-%d")
    formatted_end_time = parsed_end_time.strftime("%Y-%m-%d")
    sql_statement = "SELECT candidates.first_name as cfn, "\
                    "candidates.last_name as cln, "\
                    "faculties.first_name as ffn, "\
                    "faculties.last_name as fln, "\
                    "course_types.course_type as course_name, "\
                    "appointments.created_at, "\
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
    sql_statement =  "SELECT alignment_types.alignment_type as an, count(*) "\
                    "FROM alignment_types "\
                    "JOIN candidates ON alignment_types.id = candidates.alignment_type_id GROUP BY an"
    @results = ActiveRecord::Base.connection.execute(sql_statement)
    @candidates = Candidate.all
  end

  def upcoming_appointments
    @appointments = Appointment.where('start BETWEEN ? AND ?', Time.now, Time.now + 2.weeks).order(:start)
  end

  def candidates_without_applications
    @candidates = Candidate.where.not(id: ApplicationForm.pluck(:candidate_id).reject {|x| x.nil?})
  end
  def applications_without_appointments
    @application_forms = ApplicationForm.where.not(id: Appointment.pluck(:application_form_id).reject {|x| x.nil?})
  end

  def candidates_by_course
    @candidates = Candidate.all
    @course_types = CourseType.all

    sql_statement = "SELECT course_types.course_type as an, count(*)"\
                     "FROM course_types"
    @sql = ActiveRecord::Base.connection.execute(sql_statement)
  end

end
