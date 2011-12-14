class QuestAssign < ActiveRecord::Base
  attr_accessible :user_id, :quest_id
  belongs_to :users
  belongs_to :quests
end
