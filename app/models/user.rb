class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :providers_attributes

  has_many :providers, :class_name => "UserProvider", :dependent => :destroy
  has_many :quest_assigns
  accepts_nested_attributes_for :providers

  authenticates_with_sorcery!

  validates_length_of :password, :minimum => 3, :message => "password must be at least 3 characters long", :if => :password
  validates_confirmation_of :password, :message => "should match confirmation", :if => :password
  
  def pick_quest(quest_id)
    self.quest_assigns.create(:quest_id => quest_id)    
  end
end
