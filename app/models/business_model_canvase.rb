class BusinessModelCanvase < ActiveRecord::Base
  has_many :customer_segments
  accepts_nested_attributes_for :customer_segments, reject_if: :all_blank, allow_destroy: true
end
