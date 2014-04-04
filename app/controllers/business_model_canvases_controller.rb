class BusinessModelCanvasesController < ApplicationController
  before_action :set_business_model_canvase, only: [:show, :edit, :update, :destroy]

  # GET /business_model_canvases
  # GET /business_model_canvases.json
  def index
    @business_model_canvases = BusinessModelCanvase.all
  end

  # GET /business_model_canvases/1
  # GET /business_model_canvases/1.json
  def show
  end

  # GET /business_model_canvases/new
  def new
    @business_model_canvase = BusinessModelCanvase.new
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
    end
    def set_customer_segment
      @customer_segment = @business_model_canvase.customer_segment
      @customer_segment ||= @business_model_canvase.build_customer_segment
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_model_canvase_params
      params.require(:business_model_canvase).permit(:name, :description)
    end
end
