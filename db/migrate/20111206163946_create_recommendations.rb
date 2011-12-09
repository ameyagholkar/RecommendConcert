class CreateRecommendations < ActiveRecord::Migration
  def self.up
    create_table :recommendations do |t|
      t.integer :concert_id
      t.integer :user_id
      t.integer :rating
      t.string :explanation

      t.timestamps
    end
  end

  def self.down
    drop_table :recommendations
  end
end
