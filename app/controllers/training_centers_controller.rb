class TrainingCentersController < ApplicationController
  before_action :set_training_center, only: [:show, :edit, :update, :destroy]

  # GET /training_centers
  # GET /training_centers.json
  def index
    @training_centers = TrainingCenter.all
  end

  # GET /training_centers/1
  # GET /training_centers/1.json
  def show
  end

  # GET /training_centers/new
  def new
    @training_center = TrainingCenter.new
  end

  # GET /training_centers/1/edit
  def edit
  end

  # POST /training_centers
  # POST /training_centers.json
  def create
    @training_center = TrainingCenter.new(training_center_params)

    respond_to do |format|
      if @training_center.save
        format.html { redirect_to @training_center, notice: 'Training center was successfully created.' }
        format.json { render :show, status: :created, location: @training_center }
      else
        format.html { render :new }
        format.json { render json: @training_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /training_centers/1
  # PATCH/PUT /training_centers/1.json
  def update
    respond_to do |format|
      if @training_center.update(training_center_params)
        format.html { redirect_to @training_center, notice: 'Training center was successfully updated.' }
        format.json { render :show, status: :ok, location: @training_center }
      else
        format.html { render :edit }
        format.json { render json: @training_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /training_centers/1
  # DELETE /training_centers/1.json
  def destroy
    @training_center.destroy
    respond_to do |format|
      format.html { redirect_to training_centers_url, notice: 'Training center was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_training_center
      @training_center = TrainingCenter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def training_center_params
      params.require(:training_center).permit(:training_center_name, :primary_contact, :phone, :email)
    end
end
