class CreateUserParties < ActiveRecord::Migration
  def change
    create_table :user_parties do |t|
      t.integer :user_id
      t.integer :user_status_id
      t.string :user_statuses

      t.timestamps
    end
  end
end
