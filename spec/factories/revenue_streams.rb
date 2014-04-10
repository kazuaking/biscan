# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :revenue_stream do
    business_model_canvase nil
    name "MyString"
    description "MyText"
    updated_by 1
  end
end
