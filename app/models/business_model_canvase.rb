class BusinessModelCanvase < ActiveRecord::Base
  has_many :customer_segments
  has_many :value_propositions
  has_many :channels
  has_many :customer_relationships
  has_many :revenue_streams
  has_many :key_resources
  has_many :key_activities
  has_many :key_partnerships
  has_many :cost_structures
  accepts_nested_attributes_for :customer_segments, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :value_propositions, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :channels, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :customer_relationships, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :revenue_streams, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :key_resources, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :key_activities, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :key_partnerships, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :cost_structures, reject_if: :all_blank, allow_destroy: true
end
