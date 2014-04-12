module BusinessModelCanvaseGetable
  extend ActiveSupport::Concern

  included do
    before_filter :set_business_model_canvase
  end

  def set_business_model_canvase
    @business_model_canvase = BusinessModelCanvase.find(params[:business_model_canvase_id])
  end
end
