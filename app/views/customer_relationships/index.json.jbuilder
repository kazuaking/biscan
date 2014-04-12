json.array!(@customer_relationships) do |customer_relationship|
  json.extract! customer_relationship, :id, :business_model_canvase_id, :name, :description, :updated_by
  json.url customer_relationship_url(customer_relationship, format: :json)
end
