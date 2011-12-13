# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :quest do
    user_id 1
    quest_title "MyString"
    quest_text "MyString"
    location_id 1
  end
end
