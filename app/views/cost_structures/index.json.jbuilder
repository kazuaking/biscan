json.array!(@cost_structures) do |cost_structure|
  json.extract! cost_structure, :id, :business_model_canvase_id, :name, :description, :updated_by
  json.url cost_structure_url(cost_structure, format: :json)
end
