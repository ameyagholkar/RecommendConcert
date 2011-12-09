class CreateSimilarArtists < ActiveRecord::Migration
  def self.up
    create_table :similar_artists do |t|
      t.integer :artist1_id
      t.integer :artist2_id

      t.timestamps

    end

    for recommendation in Recommendation.all
      recommendation.delete
    end
    for concert in Concert.all
      concert.delete
    end
    for uar in UsersArtistRating.all
      uar.delete
    end

    drop_table :artists

    create_table :artists do |t|
      t.string :name, :null=>false
      t.string :genre, :null=>false
      t.string :image
      t.integer :rating , :null=>false  , :default =>5

      t.timestamps
    end

    Artist.create  :id => 1, :name => "Linkin Park", :genre =>  "Rock", :rating =>9
    Artist.create  :id => 2, :name => "Lady Gaga", :genre =>  "Pop", :rating =>8
    Artist.create  :id => 3, :name => "Jason Mraz", :genre =>  "Rock", :rating =>8
    Artist.create  :id => 4, :name => "Jay-Z", :genre =>  "Rap", :rating =>8
    Artist.create  :id => 5, :name => "Eminem", :genre =>  "Rap", :rating =>8
    Artist.create  :id => 6, :name => "Jack Johnson", :genre =>  "Rock", :rating =>8
    Artist.create  :id => 7, :name => "Foo Fighters", :genre =>  "Rock", :rating =>8
    Artist.create  :id => 8, :name => "Katy Perry", :genre =>  "Pop", :rating =>8
    Artist.create  :id => 9, :name => "30 Seconds to Mars", :genre =>  "Rock", :rating =>9
    Artist.create  :id => 10, :name => "Incubus", :genre =>  "Rock", :rating =>8
    Artist.create  :id => 11, :name => "Bruno Mars", :genre =>  "Pop", :rating =>9
    Artist.create  :id => 12, :name => "Adele", :genre =>  "Pop", :rating =>8
    Artist.create  :id => 13, :name => "Coldplay", :genre =>  "Rock", :rating =>9
    Artist.create  :id => 14, :name => "Rihanna", :genre =>  "Pop", :rating =>8
    Artist.create  :id => 15, :name => "Maroon 5", :genre =>  "Rock", :rating =>8
    Artist.create  :id => 16, :name => "Taylor Swift", :genre =>  "Country", :rating =>9
    Artist.create  :id => 17, :name => "Toby Keith", :genre =>  "Country", :rating =>8
    Artist.create  :id => 18, :name => "Lady Antebellum", :genre =>  "Country", :rating =>9
    Artist.create  :id => 19, :name => "Red Hot Chili Peppers", :genre =>  "Rock", :rating =>8
    Artist.create  :id => 20, :name => "U2", :genre =>  "Rock", :rating =>8
    Artist.create  :id => 21, :name => "Beyonce", :genre =>  "Pop", :rating =>8
    Artist.create  :id => 22, :name => "Radiohead", :genre =>  "Rock", :rating =>8
    Artist.create  :id => 23, :name => "James Blunt", :genre =>  "Rock", :rating =>7

    SimilarArtist.create :artist1_id => 1, :artist2_id => 9
    SimilarArtist.create :artist1_id => 1, :artist2_id => 10
    SimilarArtist.create :artist1_id => 9, :artist2_id => 10
    SimilarArtist.create :artist1_id => 2, :artist2_id => 8
    SimilarArtist.create :artist1_id => 3, :artist2_id => 6
    SimilarArtist.create :artist1_id => 3, :artist2_id => 11
    SimilarArtist.create :artist1_id => 4, :artist2_id => 21
    SimilarArtist.create :artist1_id => 4, :artist2_id => 5
    SimilarArtist.create :artist1_id => 7, :artist2_id => 19
    SimilarArtist.create :artist1_id => 12, :artist2_id => 14
    SimilarArtist.create :artist1_id => 12, :artist2_id => 21
    SimilarArtist.create :artist1_id => 13, :artist2_id => 22
    SimilarArtist.create :artist1_id => 14, :artist2_id => 21

    Concert.create :venue_id => 1, :artist_id => 1, :start_time => "December 22, 2011 7:00 PM", :min_price => 40, :max_price => 200
    Concert.create :venue_id => 4, :artist_id => 2, :start_time => "December 18, 2011 7:00 PM", :min_price => 40, :max_price => 300
    Concert.create :venue_id => 3, :artist_id => 3, :start_time => "December 14, 2011 8:00 PM", :min_price => 40, :max_price => 120
    Concert.create :venue_id => 5, :artist_id => 4, :start_time => "December 21, 2011 7:00 PM", :min_price => 20, :max_price => 100
    Concert.create :venue_id => 2, :artist_id => 5, :start_time => "February 2, 2012 8:00 PM", :min_price => 40, :max_price => 200
    Concert.create :venue_id => 5, :artist_id => 6, :start_time => "January 3, 2012 8:00 PM", :min_price => 35, :max_price => 160
    Concert.create :venue_id => 5, :artist_id => 7, :start_time => "January 8, 2012 8:00 PM", :min_price => 30, :max_price => 200
    Concert.create :venue_id => 3, :artist_id => 8, :start_time => "January 12, 2012 7:00 PM", :min_price => 40, :max_price => 150
    Concert.create :venue_id => 4, :artist_id => 9, :start_time => "January 21, 2012 9:00 PM", :min_price => 35, :max_price => 120
    Concert.create :venue_id => 1, :artist_id => 10, :start_time => "February 10, 2012 8:00 PM", :min_price => 25, :max_price => 170
    Concert.create :venue_id => 3, :artist_id => 11, :start_time => "December 20, 2011 9:00 PM", :min_price => 20, :max_price => 100
    Concert.create :venue_id => 1, :artist_id => 12, :start_time => "January 5, 2012 9:00 PM",  :min_price => 30, :max_price => 120
    Concert.create :venue_id => 5, :artist_id => 13, :start_time => "February 2, 2012 7:00 PM", :min_price => 35, :max_price => 125
    Concert.create :venue_id => 4, :artist_id => 14, :start_time => "January 20, 2012 9:00 PM", :min_price => 20, :max_price => 100
    Concert.create :venue_id => 4, :artist_id => 15, :start_time => "January 26, 2012 8:00 PM", :min_price => 25, :max_price => 150
    Concert.create :venue_id => 1, :artist_id => 16, :start_time => "December 13, 2011 9:00 PM", :min_price => 25, :max_price => 200
    Concert.create :venue_id => 3, :artist_id => 17, :start_time => "January 15, 2012 7:00 PM", :min_price => 20, :max_price => 110
    Concert.create :venue_id => 1, :artist_id => 18, :start_time => "December 28, 2012 9:00 PM", :min_price => 25, :max_price => 100
    Concert.create :venue_id => 2, :artist_id => 19, :start_time => "February 11, 2012 8:00 PM", :min_price => 25, :max_price => 180
    Concert.create :venue_id => 1, :artist_id => 20, :start_time => "January 22, 2012 7:00 PM", :min_price => 35, :max_price => 300
    Concert.create :venue_id => 3, :artist_id => 21, :start_time => "January 26, 2012 8:00 PM", :min_price => 25, :max_price => 190
    Concert.create :venue_id => 2, :artist_id => 22, :start_time => "January 13, 2012 7:00 PM", :min_price => 35, :max_price => 300
    Concert.create :venue_id => 3, :artist_id => 23, :start_time => "January 10, 2012 8:00 PM", :min_price => 10, :max_price => 90
  end

  def self.down
    drop_table :similar_artists
  end
end
