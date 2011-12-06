class CreateUsersArtistRatings < ActiveRecord::Migration
  def change
    create_table :users_artist_ratings do |t|
      t.integer :artist_id
      t.integer :rating_id

      t.timestamps
    end
  end
end
