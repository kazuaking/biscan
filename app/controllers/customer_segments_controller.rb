class CustomerSegmentsController < ApplicationController
  include BusinessModelCanvaseGetable
  before_action :set_customer_segment, only: [:show, :edit, :update, :destroy]

  # GET /customer_segments
  # GET /customer_segments.json
  def index
    @customer_segments = CustomerSegment.all
  end

  # GET /customer_segments/1
  # GET /customer_segments/1.json
  def show
  end

  # GET /customer_segments/new
  def new
    @customer_segment = CustomerSegment.new
  end

  # GET /customer_segments/1/edit
  def edit
  end

  # POST /customer_segments
  # POST /customer_segments.json
  def create
    @customer_segment = CustomerSegment.new(customer_segment_params)

    respond_to do |format|
      if @customer_segment.save
        format.html { redirect_to @customer_segment, notice: 'Customer segment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @customer_segment }
      else
        format.html { render action: 'new' }
        format.json { render json: @customer_segment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_segments/1
  # PATCH/PUT /customer_segments/1.json
  def update
    respond_to do |format|
      if @customer_segment.update(customer_segment_params)
        format.html { redirect_to @customer_segment, notice: 'Customer segment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @customer_segment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_segments/1
  # DELETE /customer_segments/1.json
  def destroy
    @customer_segment.destroy
    respond_to do |format|
      format.html { redirect_to customer_segments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_segment
      @customer_segment = CustomerSegment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_segment_params
      params.require(:customer_segment).permit(:business_model_canvase_id, :name, :description, :updated_by)
    end
end
