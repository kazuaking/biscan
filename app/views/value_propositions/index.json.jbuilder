json.array!(@value_propositions) do |value_proposition|
  json.extract! value_proposition, :id, :business_model_canvase_id, :name, :description, :updated_by
  json.url value_proposition_url(value_proposition, format: :json)
end
