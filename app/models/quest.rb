class Quest < ActiveRecord::Base
  attr_accessible :title, :text, :location_id, :time_to_make, :offline
  belongs_to :quest_assigns
end
