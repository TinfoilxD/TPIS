class FacultyTypesController < ApplicationController
  before_action :set_faculty_type, only: [:show, :edit, :update, :destroy]

  # GET /faculty_types
  # GET /faculty_types.json
  def index
    @faculty_types = FacultyType.all
  end

  # GET /faculty_types/1
  # GET /faculty_types/1.json
  def show
  end

  # GET /faculty_types/new
  def new
    @faculty_type = FacultyType.new
  end

  # GET /faculty_types/1/edit
  def edit
  end

  # POST /faculty_types
  # POST /faculty_types.json
  def create
    @faculty_type = FacultyType.new(faculty_type_params)

    respond_to do |format|
      if @faculty_type.save
        format.html { redirect_to @faculty_type, notice: 'Faculty type was successfully created.' }
        format.json { render :show, status: :created, location: @faculty_type }
      else
        format.html { render :new }
        format.json { render json: @faculty_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faculty_types/1
  # PATCH/PUT /faculty_types/1.json
  def update
    respond_to do |format|
      if @faculty_type.update(faculty_type_params)
        format.html { redirect_to @faculty_type, notice: 'Faculty type was successfully updated.' }
        format.json { render :show, status: :ok, location: @faculty_type }
      else
        format.html { render :edit }
        format.json { render json: @faculty_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faculty_types/1
  # DELETE /faculty_types/1.json
  def destroy
    @faculty_type.destroy
    respond_to do |format|
      format.html { redirect_to faculty_types_url, notice: 'Faculty type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faculty_type
      @faculty_type = FacultyType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faculty_type_params
      params.require(:faculty_type).permit(:job_title)
    end
end
