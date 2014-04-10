json.array!(@channels) do |channel|
  json.extract! channel, :id, :business_model_canvase_id, :name, :description, :updated_by
  json.url channel_url(channel, format: :json)
end
