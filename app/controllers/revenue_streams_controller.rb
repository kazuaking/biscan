class RevenueStreamsController < ApplicationController
  include BusinessModelCanvaseGetable
  before_action :set_revenue_stream, only: [:show, :edit, :update, :destroy]

  # GET /revenue_streams
  # GET /revenue_streams.json
  def index
    @revenue_streams = RevenueStream.all
  end

  # GET /revenue_streams/1
  # GET /revenue_streams/1.json
  def show
  end

  # GET /revenue_streams/new
  def new
    @revenue_stream = RevenueStream.new
  end

  # GET /revenue_streams/1/edit
  def edit
  end

  # POST /revenue_streams
  # POST /revenue_streams.json
  def create
    @revenue_stream = RevenueStream.new(revenue_stream_params)

    respond_to do |format|
      if @revenue_stream.save
        format.html { redirect_to @revenue_stream, notice: 'Revenue stream was successfully created.' }
        format.json { render action: 'show', status: :created, location: @revenue_stream }
      else
        format.html { render action: 'new' }
        format.json { render json: @revenue_stream.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /revenue_streams/1
  # PATCH/PUT /revenue_streams/1.json
  def update
    respond_to do |format|
      if @revenue_stream.update(revenue_stream_params)
        format.html { redirect_to @business_model_canvase, notice: 'Revenue stream was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @revenue_stream.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /revenue_streams/1
  # DELETE /revenue_streams/1.json
  def destroy
    @revenue_stream.destroy
    respond_to do |format|
      format.html { redirect_to revenue_streams_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_revenue_stream
      @revenue_stream = RevenueStream.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def revenue_stream_params
      params.require(:revenue_stream).permit(:business_model_canvase_id, :name, :description, :updated_by)
    end
end
