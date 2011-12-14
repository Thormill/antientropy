class Quest < ActiveRecord::Base
  attr_accessible :quest_title, :quest_text, :location_id, :time_to_make
  belongs_to :quest_assigns
end
