class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
      t.string :title
      t.string :text
      t.integer :location_id
      t.integer :time_to_make
      t.integer :qtype
      t.timestamps
    end
  end
end
