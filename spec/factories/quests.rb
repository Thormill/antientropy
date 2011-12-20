# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :quest do
    title "quest_title"
    text "quest_text"
    location_id 1
  end
end
