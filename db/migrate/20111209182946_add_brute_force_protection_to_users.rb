class AddBruteForceProtectionToUsers < ActiveRecord::Migration
  def up
    add_column :users, :failed_logins_count, :integer, :default => 0
    add_column :users, :lock_expires_at, :datetime, :default => nil
  end

  def down
    remove_column :users, :lock_expires_at
    remove_column :users, :failed_logins_count
  end
end
