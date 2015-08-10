class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email,            :null => false, :limit => 100
      t.string :password_digest,  :null => false, :limit => 128
      t.timestamps null: false
    end
    add_index :users, :email, :unique => true
  end
end
