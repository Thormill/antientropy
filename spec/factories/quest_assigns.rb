# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :quest_assigns do
    user_id 1
    quest_id 1
    quest_status_id 1
    quest_statuses "MyString"
  end
end
