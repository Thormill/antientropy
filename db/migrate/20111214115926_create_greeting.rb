class CreateGreeting < ActiveRecord::Migration
  def change
    create_table :greetings do |t|
      t.string :text
    end
  end
end
