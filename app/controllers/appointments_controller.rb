class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /appointments
  # GET /appointments.json
  def index
    @appointments = Appointment.all
  end

  def calendar_index
    @appointments = Appointment.all
  end

  # GET /appointments/1
  # GET /appointments/1.json
  def show
  end

  def book_appointment
    @application_form = ApplicationForm.find(params[:id])
    if @application_form.nil?
      redirect_to error_path(:error_message => 2)
    end
    @current_candidate = Candidate.where(email: current_user.email).first
    if @current_candidate.nil?
      redirect_to error_path(:error_message => 0)
    end
  end
  # GET /appointments/new
  def new
    @appointment = Appointment.new
  end

  # GET /appointments/1/edit
  def edit
  end

  # POST /appointments
  # POST /appointments.json
  def create
    if params.has_key?(:appointment)
      @appointment = Appointment.new(appointment_params)
      @selected_timeslot = Timeslot.where(start: @appointment.start.to_datetime).first
      @appointment.end = (@appointment.start.to_time + 1.hours).to_datetime
      @appointment.faculty_id = @selected_timeslot.faculty_id
      @application_form = ApplicationForm.find(@appointment.application_form_id)
      @candidate = Candidate.find(@application_form.candidate_id)
      @responsible_faculty = Faculty.find(@selected_timeslot.faculty_id)
      @appointment.title = "Appt. for #{@candidate.full_name} with #{@responsible_faculty.full_name}"
      @appointment.save
      Timeslot.where(start: @appointment.start.to_datetime).delete_all
      NotificationMailer.appointment_notification(@appointment).deliver_later
      render :json => {success: true}
    else
      render :json => {success: false}
    end
  end


  # PATCH/PUT /appointments/1
  # PATCH/PUT /appointments/1.json
  def update
    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to @appointment, notice: 'Appointment was successfully updated.' }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointments/1
  # DELETE /appointments/1.json
  def destroy
    @appointment.destroy
    respond_to do |format|
      format.html { redirect_to appointments_url, notice: 'Appointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def list
    render :json => Appointment.all
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_params
      params.require(:appointment).permit(:start, :end, :application_form_id, :faculty_id)
    end
end
