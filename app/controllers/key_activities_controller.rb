class KeyActivitiesController < ApplicationController
  include BusinessModelCanvaseGetable
  before_action :set_key_activity, only: [:show, :edit, :update, :destroy]

  # GET /key_activities
  # GET /key_activities.json
  def index
    @key_activities = KeyActivity.all
  end

  # GET /key_activities/1
  # GET /key_activities/1.json
  def show
  end

  # GET /key_activities/new
  def new
    @key_activity = KeyActivity.new
  end

  # GET /key_activities/1/edit
  def edit
  end

  # POST /key_activities
  # POST /key_activities.json
  def create
    @key_activity = @business_model_canvase.key_activities.build(key_activity_params)

    respond_to do |format|
      if @key_activity.save
        format.html { redirect_to @business_model_canvase, notice: 'Key activity was successfully created.' }
        format.json { render action: 'show', status: :created, location: @key_activity }
      else
        format.html { render action: 'new' }
        format.json { render json: @key_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /key_activities/1
  # PATCH/PUT /key_activities/1.json
  def update
    respond_to do |format|
      if @key_activity.update(key_activity_params)
        format.html { redirect_to @business_model_canvase, notice: 'Key activity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @key_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /key_activities/1
  # DELETE /key_activities/1.json
  def destroy
    @key_activity.destroy
    respond_to do |format|
      format.html { redirect_to @business_model_canvase }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_key_activity
      @key_activity = KeyActivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def key_activity_params
      params.require(:key_activity).permit(:business_model_canvase_id, :name, :description, :updated_by)
    end
end
