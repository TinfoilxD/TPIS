class AlignmentTypesController < ApplicationController
  before_action :set_alignment_type, only: [:show, :edit, :update, :destroy]

  # GET /allignment_types
  # GET /allignment_types.json
  def index
    @alignment_types = AlignmentType.all
  end

  # GET /allignment_types/1
  # GET /allignment_types/1.json
  def show
  end

  # GET /allignment_types/new
  def new
    @alignment_type = AlignmentType.new
  end

  # GET /allignment_types/1/edit
  def edit
  end

  # POST /allignment_types
  # POST /allignment_types.json
  def create
    @alignment_type = AlignmentType.new(alignment_type_params)

    respond_to do |format|
      if @alignment_type.save
        format.html { redirect_to @alignment_type, notice: 'Alignment type was successfully created.' }
        format.json { render :show, status: :created, location: @alignment_type }
      else
        format.html { render :new }
        format.json { render json: @alignment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /allignment_types/1
  # PATCH/PUT /allignment_types/1.json
  def update
    respond_to do |format|
      if @alignment_type.update(allignment_type_params)
        format.html { redirect_to @alignment_type, notice: 'Allignment type was successfully updated.' }
        format.json { render :show, status: :ok, location: @alignment_type }
      else
        format.html { render :edit }
        format.json { render json: @alignment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allignment_types/1
  # DELETE /allignment_types/1.json
  def destroy
    @alignment_type.destroy
    respond_to do |format|
      format.html { redirect_to alignment_type_url, notice: 'Alignment type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alignment_type
      @alignment_type = AlignmentType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alignment_type_params
      params.require(:alignment_type).permit(:alignment_type, :abbrev)
    end
end
