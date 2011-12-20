require 'spec_helper'

describe User do
  describe "quests" do
    it "should take quest" do
      user = Factory.build(:user)
      user.save.should be_true
      quest = Factory.build(:quest)
      quest.save.should be_true
      user.accept_quest(quest.id)
      assign = QuestAssign.find_by_user_id(user.id)
      assign.quest_id.should eq quest.id
      assign.quest_status_id.should eq 0
    end

    it "should complete quest" do
      user = Factory.build(:user)
      quest = Factory.build(:quest)
      user.save.should be_true
      quest.save.should be_true
      user.accept_quest(quest.id)
      user.complete_quest(quest.id)
      assign = QuestAssign.find_by_user_id(user.id)
      assign.quest_status_id.should eq 1
    end

  end
end
