class CreateArtists < ActiveRecord::Migration
  def self.up
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
  end

   def self.down
    drop_table :artists
  end
end
