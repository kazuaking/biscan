class CustomerRelationshipsController < ApplicationController
  include BusinessModelCanvaseGetable
  before_action :set_customer_relationship, only: [:show, :edit, :update, :destroy]

  # GET /customer_relationships
  # GET /customer_relationships.json
  def index
    @customer_relationships = CustomerRelationship.all
  end

  # GET /customer_relationships/1
  # GET /customer_relationships/1.json
  def show
  end

  # GET /customer_relationships/new
  def new
    @customer_relationship = CustomerRelationship.new
  end

  # GET /customer_relationships/1/edit
  def edit
  end

  # POST /customer_relationships
  # POST /customer_relationships.json
  def create
    @customer_relationship = @business_model_canvase.customer_relationships.build(customer_relationship_params)

    respond_to do |format|
      if @customer_relationship.save
        format.html { redirect_to @business_model_canvase, notice: 'Customer relationship was successfully created.' }
        format.json { render action: 'show', status: :created, location: @customer_relationship }
      else
        format.html { render action: 'new' }
        format.json { render json: @customer_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_relationships/1
  # PATCH/PUT /customer_relationships/1.json
  def update
    respond_to do |format|
      if @customer_relationship.update(customer_relationship_params)
        format.html { redirect_to @business_model_canvase, notice: 'Customer relationship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @customer_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_relationships/1
  # DELETE /customer_relationships/1.json
  def destroy
    @customer_relationship.destroy
    respond_to do |format|
      format.html { redirect_to @business_model_canvase }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_relationship
      @customer_relationship = CustomerRelationship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_relationship_params
      params.require(:customer_relationship).permit(:business_model_canvase_id, :name, :description, :updated_by)
    end
end
