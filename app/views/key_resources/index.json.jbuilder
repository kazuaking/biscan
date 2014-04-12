json.array!(@key_resources) do |key_resource|
  json.extract! key_resource, :id, :business_model_canvase_id, :name, :description, :updated_by
  json.url key_resource_url(key_resource, format: :json)
end
