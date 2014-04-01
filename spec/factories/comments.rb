# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    body "MyText"
    menu_item_id 1
  end
end
