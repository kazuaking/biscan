class KeyResourcesController < ApplicationController
  include BusinessModelCanvaseGetable
  before_action :set_key_resource, only: [:show, :edit, :update, :destroy]

  # GET /key_resources
  # GET /key_resources.json
  def index
    @key_resources = KeyResource.all
  end

  # GET /key_resources/1
  # GET /key_resources/1.json
  def show
  end

  # GET /key_resources/new
  def new
    @key_resource = KeyResource.new
  end

  # GET /key_resources/1/edit
  def edit
  end

  # POST /key_resources
  # POST /key_resources.json
  def create
    @key_resource = KeyResource.new(key_resource_params)

    respond_to do |format|
      if @key_resource.save
        format.html { redirect_to @key_resource, notice: 'Key resource was successfully created.' }
        format.json { render action: 'show', status: :created, location: @key_resource }
      else
        format.html { render action: 'new' }
        format.json { render json: @key_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /key_resources/1
  # PATCH/PUT /key_resources/1.json
  def update
    respond_to do |format|
      if @key_resource.update(key_resource_params)
        format.html { redirect_to @key_resource, notice: 'Key resource was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @key_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /key_resources/1
  # DELETE /key_resources/1.json
  def destroy
    @key_resource.destroy
    respond_to do |format|
      format.html { redirect_to key_resources_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_key_resource
      @key_resource = KeyResource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def key_resource_params
      params.require(:key_resource).permit(:business_model_canvase_id, :name, :description, :updated_by)
    end
end
