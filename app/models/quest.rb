class Quest < ActiveRecord::Base
  attr_accessible :quest_title, :quest_text, :location_id
  belongs_to :quest_assigns
end
