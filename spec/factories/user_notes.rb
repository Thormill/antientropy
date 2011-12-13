# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_notes do
    user_id 1
    quest_id 1
    note_text "MyString"
  end
end
