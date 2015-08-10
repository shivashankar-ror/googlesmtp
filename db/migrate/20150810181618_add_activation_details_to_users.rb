class AddActivationDetailsToUsers < ActiveRecord::Migration
  def up
    #temp_access_token can be used for password reset and account confirmation 
    add_column :users, :temp_access_token, :string, :limit => 128
    add_column :users, :temp_access_token_expires_at, :datetime
    add_index :users, :temp_access_token
  end
  def down
    remove_index  :users, :temp_access_token
    remove_column :users, :temp_access_token
    remove_column :users, :temp_access_token_expires_at
  end
end
