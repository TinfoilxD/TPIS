class TimeslotsController < ApplicationController
  before_action :set_timeslot, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /timeslots
  # GET /timeslots.json
  def index
    @timeslots = Timeslot.all
  end

  def calendar_index
    @timeslots = Timeslot.all
  end

  # GET /timeslots/1
  # GET /timeslots/1.json
  def show
  end

  # GET /timeslots/new
  def new
    @timeslot = Timeslot.new
  end

  # GET /timeslots/1/edit
  def edit
  end

  # POST /timeslots
  # POST /timeslots.json
  def create
    @timeslot = Timeslot.new(timeslot_params)
    @current_faculty = Faculty.where(email: current_user.email).first
    @timeslot.faculty_id = @current_faculty.id
    @timeslot.title = "Timeslot Available for #{@current_faculty.full_name}"
    @timeslot.end = (@timeslot.start.to_time + 1.hours).to_datetime
    @timeslot.save

    respond_to do |format|
      if @timeslot.save
        format.json {render :json => @timeslot}
      else
        format.json {render :status => 400}
      end
    end
  end

  # PATCH/PUT /timeslots/1
  # PATCH/PUT /timeslots/1.json
  def update
    respond_to do |format|
      if @timeslot.update(timeslot_params)
        format.html { redirect_to @timeslot, notice: 'Timeslot was successfully updated.' }
        format.json { render :show, status: :ok, location: @timeslot }
      else
        format.html { render :edit }
        format.json { render json: @timeslot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timeslots/1
  # DELETE /timeslots/1.json
  def destroy
    @timeslot.destroy
    respond_to do |format|
      format.html { redirect_to timeslots_url, notice: 'Timeslot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def delete_where
    if params.has_key?(:start)
      Timeslot.where(start: params[:start].to_datetime).delete_all
      render :json => {success: true}
    else
      render :json => {success: false}
    end
  end


  def input_timeslots
    @current_faculty = Faculty.where(email: current_user.email).first
    if @current_faculty.nil?
      redirect_to error_path(:error_message => 1)
    end
  end

  def list
    @Timeslots = Timeslot.all
    render :json => @Timeslots
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timeslot
      @timeslot = Timeslot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def timeslot_params
      params.require(:timeslot).permit(:start, :end, :faculty_id)
    end


end
