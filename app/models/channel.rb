class Channel < ActiveRecord::Base
  belongs_to :business_model_canvase
  accepts_nested_attributes_for :business_model_canvase
end
