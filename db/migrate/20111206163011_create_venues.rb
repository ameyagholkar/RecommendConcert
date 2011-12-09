class CreateVenues < ActiveRecord::Migration
  def self.up
    create_table :venues do |t|
      t.string :name
      t.string :address

      t.timestamps
    end

    Venue.create  :id => 1, :name => "RBC Center", :address => "1400 Edwards Mill Rd, Raleigh, NC 27607"
    Venue.create  :id => 2, :name => "Lincoln Theatre", :address => "126 E Cabarrus St  Raleigh, NC 27601-1832"
    Venue.create  :id => 3, :name => "Koka Booth Amphitheatre", :address => "8003 Regency Pkwy, Cary, NC 27518"
    Venue.create  :id => 4, :name => "Raleigh Amphitheatre", :address => "500 S. McDowell St,  Raleigh, NC 27601"
    Venue.create  :id => 5, :name => "Time Warner Cable Music Pavilion at Walnut Creek", :address => "3801 Rock Quarry Rd, Raleigh, NC 27610"
  end

  def self.down
    drop_table :venues
  end
end
