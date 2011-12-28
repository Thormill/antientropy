class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :providers_attributes

  has_many :providers, :class_name => "UserProvider", :dependent => :destroy
  has_many :quest_assigns
  accepts_nested_attributes_for :providers

  authenticates_with_sorcery!

  validates :email,
    :presence => true,
    :uniqueness => true,
    :format => { with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i },
    :on => :create

  validates :name,
    :presence => true,
    :uniqueness => true,
    :on => :create

  validates_presence_of :password
  validates_length_of :password, :minimum => 3, :if => :password

  validates_confirmation_of :password, :if => :password
  
  def accept_quest(q_id)
    self.quest_assigns.create(:quest_id => q_id, :quest_status_id => 0)
  end

  def complete_quest(q_id)
    self.quest_assigns.find_by_quest_id(q_id).update_attribute(:quest_status_id, 1)
  end
end