json.array!(@customer_segments) do |customer_segment|
  json.extract! customer_segment, :id, :business_model_canvase_id, :name, :description, :updated_by
  json.url customer_segment_url(customer_segment, format: :json)
end
