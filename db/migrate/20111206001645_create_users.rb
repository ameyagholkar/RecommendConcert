class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username , :null=>false  , :default =>""
      t.string :password , :null=>false
      t.timestamps
    end

    User.create  :username => "Admin", :password => "password"
  end

  def self.down
    drop_table :users
  end
end