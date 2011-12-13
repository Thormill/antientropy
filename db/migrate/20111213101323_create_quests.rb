class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
      t.string :quest_title
      t.string :quest_text
      t.integer :location_id

      t.timestamps
    end
  end
end
