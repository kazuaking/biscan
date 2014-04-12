json.array!(@key_partnerships) do |key_partnership|
  json.extract! key_partnership, :id, :business_model_canvase_id, :name, :description, :updated_by
  json.url key_partnership_url(key_partnership, format: :json)
end
