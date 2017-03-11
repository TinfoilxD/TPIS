class AllignmentTypesController < ApplicationController
  before_action :set_allignment_type, only: [:show, :edit, :update, :destroy]

  # GET /allignment_types
  # GET /allignment_types.json
  def index
    @allignment_types = AllignmentType.all
  end

  # GET /allignment_types/1
  # GET /allignment_types/1.json
  def show
  end

  # GET /allignment_types/new
  def new
    @allignment_type = AllignmentType.new
  end

  # GET /allignment_types/1/edit
  def edit
  end

  # POST /allignment_types
  # POST /allignment_types.json
  def create
    @allignment_type = AllignmentType.new(allignment_type_params)

    respond_to do |format|
      if @allignment_type.save
        format.html { redirect_to @allignment_type, notice: 'Allignment type was successfully created.' }
        format.json { render :show, status: :created, location: @allignment_type }
      else
        format.html { render :new }
        format.json { render json: @allignment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /allignment_types/1
  # PATCH/PUT /allignment_types/1.json
  def update
    respond_to do |format|
      if @allignment_type.update(allignment_type_params)
        format.html { redirect_to @allignment_type, notice: 'Allignment type was successfully updated.' }
        format.json { render :show, status: :ok, location: @allignment_type }
      else
        format.html { render :edit }
        format.json { render json: @allignment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allignment_types/1
  # DELETE /allignment_types/1.json
  def destroy
    @allignment_type.destroy
    respond_to do |format|
      format.html { redirect_to allignment_types_url, notice: 'Allignment type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_allignment_type
      @allignment_type = AllignmentType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def allignment_type_params
      params.require(:allignment_type).permit(:allignment_type, :abbrev)
    end
end
