# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_parties do
    user_id 1
    user_status_id 1
    user_statuses "MyString"
  end
end
