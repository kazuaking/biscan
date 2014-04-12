class BusinessModelCanvasesController < ApplicationController
  before_action :set_business_model_canvase, only: [:edit, :destroy]

  # GET /business_model_canvases
  # GET /business_model_canvases.json
  def index
    @business_model_canvases = BusinessModelCanvase.all
  end

  # GET /business_model_canvases/1
  # GET /business_model_canvases/1.json
  def show
    @business_model_canvase = BusinessModelCanvase.find(params[:id])
    @customer_segments = @business_model_canvase.customer_segments
    @value_propositions = @business_model_canvase.value_propositions
    @channels = @business_model_canvase.channels
    @customer_relationships = @business_model_canvase.customer_relationships
    @revenue_streams = @business_model_canvase.revenue_streams
    @key_resources = @business_model_canvase.key_resources
    @key_activities = @business_model_canvase.key_activities
    @key_partnerships = @business_model_canvase.key_partnerships
    @cost_structures = @business_model_canvase.cost_structures
  end

  # GET /business_model_canvases/new
  def new
    @business_model_canvase = BusinessModelCanvase.new
    @business_model_canvase.customer_segments.build
    @business_model_canvase.value_propositions.build
    @business_model_canvase.channels.build
    @business_model_canvase.customer_relationships.build
    @business_model_canvase.revenue_streams.build
    @business_model_canvase.key_resources.build
    @business_model_canvase.key_activities.build
    @business_model_canvase.key_partnerships.build
    @business_model_canvase.cost_structures.build
  end

  # GET /business_model_canvases/1/edit
  def edit
  end

  # POST /business_model_canvases
  # POST /business_model_canvases.json
  def create
    @business_model_canvase = BusinessModelCanvase.new(business_model_canvase_params)

    respond_to do |format|
      if @business_model_canvase.save
        format.html { redirect_to @business_model_canvase, notice: 'Business model canvase was successfully created.' }
        format.json { render action: 'show', status: :created, location: @business_model_canvase }
      else
        format.html { render action: 'new' }
        format.json { render json: @business_model_canvase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_model_canvases/1
  # PATCH/PUT /business_model_canvases/1.json
  def update
    @business_model_canvase = BusinessModelCanvase.find(params[:id])
    respond_to do |format|
      if @business_model_canvase.update(business_model_canvase_params)
        format.html { redirect_to @business_model_canvase, notice: 'Business model canvase was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @business_model_canvase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_model_canvases/1
  # DELETE /business_model_canvases/1.json
  def destroy
    @business_model_canvase.destroy
    respond_to do |format|
      format.html { redirect_to business_model_canvases_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_model_canvase
      @business_model_canvase = BusinessModelCanvase.find(params[:id])
      @business_model_canvase.customer_segments.presence || @business_model_canvase.customer_segments.build
      @business_model_canvase.value_propositions.presence || @business_model_canvase.value_propositions.build
      @business_model_canvase.channels.presence || @business_model_canvase.channels.build
      @business_model_canvase.customer_relationships.presence || @business_model_canvase.customer_relationships.build
      @business_model_canvase.revenue_streams.presence || @business_model_canvase.revenue_streams.build
      @business_model_canvase.key_resources.presence || @business_model_canvase.key_resources.build
      @business_model_canvase.key_activities.presence || @business_model_canvase.key_activities.build
      @business_model_canvase.key_partnerships.presence || @business_model_canvase.key_partnerships.build
      @business_model_canvase.cost_structures.presence || @business_model_canvase.cost_structures.build
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_model_canvase_params
      params.require(:business_model_canvase).permit(:name, :description,
        customer_segments_attributes: [:id, :business_model_canvase_id, :name, :description, :_destroy],
        value_propositions_attributes: [:id, :business_model_canvase_id, :name, :description, :_destroy],
        channels_attributes: [:id, :business_model_canvase_id, :name, :description, :_destroy],
        customer_relationships_attributes: [:id, :business_model_canvase_id, :name, :description, :_destroy],
        revenue_streams_attributes: [:id, :business_model_canvase_id, :name, :description, :_destroy],
        key_resources_attributes: [:id, :business_model_canvase_id, :name, :description, :_destroy],
        key_activities_attributes: [:id, :business_model_canvase_id, :name, :description, :_destroy],
        key_partnerships_attributes: [:id, :business_model_canvase_id, :name, :description, :_destroy],
        cost_structures_attributes: [:id, :business_model_canvase_id, :name, :description, :_destroy],
        )
    end
end
