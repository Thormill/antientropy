class CreateUserNotes < ActiveRecord::Migration
  def change
    create_table :user_notes do |t|
      t.integer :user_id
      t.integer :quest_id
      t.string :note_text

      t.timestamps
    end
  end
end
