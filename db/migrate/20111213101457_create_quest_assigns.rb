class CreateQuestAssigns < ActiveRecord::Migration
  def change
    create_table :quest_assigns do |t|
      t.integer :user_id
      t.integer :quest_id
      t.integer :quest_status_id

      t.timestamps
    end
  end
end
