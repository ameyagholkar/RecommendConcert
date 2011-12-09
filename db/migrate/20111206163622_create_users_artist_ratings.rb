class CreateUsersArtistRatings < ActiveRecord::Migration
  def self.up
    create_table :users_artist_ratings do |t|
      t.integer :artist_id
      t.integer :user_id
      t.integer :rating

      t.timestamps
    end
  end


  def self.down
    drop_table :users_artist_ratings
  end
end
