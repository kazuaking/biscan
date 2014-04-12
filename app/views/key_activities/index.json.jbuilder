json.array!(@key_activities) do |key_activity|
  json.extract! key_activity, :id, :business_model_canvase_id, :name, :description, :updated_by
  json.url key_activity_url(key_activity, format: :json)
end
