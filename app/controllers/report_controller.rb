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
    formatted_start_time = parsed_start_time.strftime("%Y/%m/%d")
    formatted_end_time = parsed_end_time.strftime("%Y/%m/%d")
    @appointments = Appointment.where(:start => formatted_start_time.to_date.beginning_of_day..formatted_end_time.to_date.end_of_day)
    render :json => @appointments

    records_array = ActiveRecord::Base.connection.execute( Report.joins(:appoitnment, :candidate, :course))


  end

end
