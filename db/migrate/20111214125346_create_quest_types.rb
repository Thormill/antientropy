class CreateQuestTypes < ActiveRecord::Migration
  def change
    create_table :quest_types do |t|
      t.string :name
    end
  end
end
