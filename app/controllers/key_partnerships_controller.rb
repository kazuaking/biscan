class KeyPartnershipsController < ApplicationController
  before_action :set_key_partnership, only: [:show, :edit, :update, :destroy]

  # GET /key_partnerships
  # GET /key_partnerships.json
  def index
    @key_partnerships = KeyPartnership.all
  end

  # GET /key_partnerships/1
  # GET /key_partnerships/1.json
  def show
  end

  # GET /key_partnerships/new
  def new
    @key_partnership = KeyPartnership.new
  end

  # GET /key_partnerships/1/edit
  def edit
  end

  # POST /key_partnerships
  # POST /key_partnerships.json
  def create
    @key_partnership = KeyPartnership.new(key_partnership_params)

    respond_to do |format|
      if @key_partnership.save
        format.html { redirect_to @key_partnership, notice: 'Key partnership was successfully created.' }
        format.json { render action: 'show', status: :created, location: @key_partnership }
      else
        format.html { render action: 'new' }
        format.json { render json: @key_partnership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /key_partnerships/1
  # PATCH/PUT /key_partnerships/1.json
  def update
    respond_to do |format|
      if @key_partnership.update(key_partnership_params)
        format.html { redirect_to @key_partnership, notice: 'Key partnership was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @key_partnership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /key_partnerships/1
  # DELETE /key_partnerships/1.json
  def destroy
    @key_partnership.destroy
    respond_to do |format|
      format.html { redirect_to key_partnerships_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_key_partnership
      @key_partnership = KeyPartnership.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def key_partnership_params
      params.require(:key_partnership).permit(:business_model_canvase_id, :name, :description, :updated_by)
    end
end
