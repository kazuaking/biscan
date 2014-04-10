json.array!(@revenue_streams) do |revenue_stream|
  json.extract! revenue_stream, :id, :business_model_canvase_id, :name, :description, :updated_by
  json.url revenue_stream_url(revenue_stream, format: :json)
end
