class CreateGreetings < ActiveRecord::Migration
  def change
    create_table :greetings do |t|
      t.string :text

      t.timestamps
    end
  end
end
