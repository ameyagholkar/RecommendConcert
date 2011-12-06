class CreateLikedGenres < ActiveRecord::Migration
  def change
    create_table :liked_genres do |t|
      t.integer :user_id
      t.string :genre

      t.timestamps
    end
  end

  def self.down
    drop_table :liked_genres
  end
end
