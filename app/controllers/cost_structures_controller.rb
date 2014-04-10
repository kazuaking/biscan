class CostStructuresController < ApplicationController
  before_action :set_cost_structure, only: [:show, :edit, :update, :destroy]

  # GET /cost_structures
  # GET /cost_structures.json
  def index
    @cost_structures = CostStructure.all
  end

  # GET /cost_structures/1
  # GET /cost_structures/1.json
  def show
  end

  # GET /cost_structures/new
  def new
    @cost_structure = CostStructure.new
  end

  # GET /cost_structures/1/edit
  def edit
  end

  # POST /cost_structures
  # POST /cost_structures.json
  def create
    @cost_structure = CostStructure.new(cost_structure_params)

    respond_to do |format|
      if @cost_structure.save
        format.html { redirect_to @cost_structure, notice: 'Cost structure was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cost_structure }
      else
        format.html { render action: 'new' }
        format.json { render json: @cost_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cost_structures/1
  # PATCH/PUT /cost_structures/1.json
  def update
    respond_to do |format|
      if @cost_structure.update(cost_structure_params)
        format.html { redirect_to @cost_structure, notice: 'Cost structure was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cost_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cost_structures/1
  # DELETE /cost_structures/1.json
  def destroy
    @cost_structure.destroy
    respond_to do |format|
      format.html { redirect_to cost_structures_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cost_structure
      @cost_structure = CostStructure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cost_structure_params
      params.require(:cost_structure).permit(:business_model_canvase_id, :name, :description, :updated_by)
    end
end
