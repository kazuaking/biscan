class BusinessModelCanvase < ActiveRecord::Base
  has_one :customer_segment
  accepts_nested_attributes_for :customer_segment
end
