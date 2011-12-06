class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.integer :venue_id
      t.integer :artist_id
      t.string :start_time

      t.timestamps
    end

    Concert.create :venue_id => 1, :artist_id => 1, :start_time => "December 22, 2011 7:00 PM"
    Concert.create :venue_id => 4, :artist_id => 2, :start_time => "December 18, 2011 7:00 PM"
    Concert.create :venue_id => 3, :artist_id => 3, :start_time => "December 11, 2011 8:00 PM"
    Concert.create :venue_id => 5, :artist_id => 4, :start_time => "December 21, 2011 7:00 PM"
    Concert.create :venue_id => 2, :artist_id => 5, :start_time => "February 2, 2012 8:00 PM"
    Concert.create :venue_id => 5, :artist_id => 6, :start_time => "January 3, 2012 8:00 PM"
    Concert.create :venue_id => 5, :artist_id => 7, :start_time => "January 8, 2012 8:00 PM"
    Concert.create :venue_id => 3, :artist_id => 8, :start_time => "January 12, 2012 7:00 PM"
    Concert.create :venue_id => 4, :artist_id => 9, :start_time => "January 21, 2012 9:00 PM"
    Concert.create :venue_id => 1, :artist_id => 10, :start_time => "February 10, 2012 8:00 PM"
    Concert.create :venue_id => 3, :artist_id => 11, :start_time => "December 20, 2011 9:00 PM"
    Concert.create :venue_id => 1, :artist_id => 12, :start_time => "January 5, 2012 9:00 PM"
    Concert.create :venue_id => 5, :artist_id => 13, :start_time => "February 2, 2012 7:00 PM"
    Concert.create :venue_id => 4, :artist_id => 14, :start_time => "January 21, 2012 9:00 PM"
    Concert.create :venue_id => 4, :artist_id => 15, :start_time => "January 26, 2012 8:00 PM"
    Concert.create :venue_id => 1, :artist_id => 16, :start_time => "December 13, 2011 9:00 PM"
    Concert.create :venue_id => 3, :artist_id => 17, :start_time => "January 15, 2012 7:00 PM"
    Concert.create :venue_id => 3, :artist_id => 18, :start_time => "January 28, 2012 8:00 PM"
  end

   def self.down
    drop_table :venues
  end
end
