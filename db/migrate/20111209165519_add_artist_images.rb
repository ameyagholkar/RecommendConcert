class AddArtistImages < ActiveRecord::Migration
  def up
    artist = Artist.find_by_name("Linkin Park")
    artist.image = "/images/linkinpark.jpg"
    artist.save

    artist = Artist.find_by_name("Lady Gaga")
    artist.image = "/images/ladygaga.jpg"
    artist.save

    artist = Artist.find_by_name("Jason Mraz")
    artist.image = "/images/jasonmraz.jpg"
    artist.save

    artist = Artist.find_by_name("Jay-Z")
    artist.image = "/images/jayz.jpg"
    artist.save

    artist = Artist.find_by_name("Eminem")
    artist.image = "/images/eminem.jpg"
    artist.save

    artist = Artist.find_by_name("Jack Johnson")
    artist.image = "/images/jackjohnson.jpg"
    artist.save

    artist = Artist.find_by_name("Foo Fighters")
    artist.image = "/images/foofighters.jpg"
    artist.save

    artist = Artist.find_by_name("Katy Perry")
    artist.image = "/images/katyperry.jpg"
    artist.save

    artist = Artist.find_by_name("30 Seconds to Mars")
    artist.image = "/images/30seconds.jpg"
    artist.save

    artist = Artist.find_by_name("Incubus")
    artist.image = "/images/incubus.jpg"
    artist.save

    artist = Artist.find_by_name("Bruno Mars")
    artist.image = "/images/brunomars.jpg"
    artist.save

    artist = Artist.find_by_name("Adele")
    artist.image = "/images/adele.jpg"
    artist.save

    artist = Artist.find_by_name("Coldplay")
    artist.image = "/images/coldplay.jpg"
    artist.save

    artist = Artist.find_by_name("Rihanna")
    artist.image = "/images/rihanna.jpg"
    artist.save

    artist = Artist.find_by_name("Maroon 5")
    artist.image = "/images/maroon5.jpg"
    artist.save

    artist = Artist.find_by_name("Taylor Swift")
    artist.image = "/images/taylorswift.jpg"
    artist.save

    artist = Artist.find_by_name("Toby Keith")
    artist.image = "/images/tobykeith.jpg"
    artist.save

    artist = Artist.find_by_name("Lady Antebellum")
    artist.image = "/images/ladyantebellum.jpg"
    artist.save

    artist = Artist.find_by_name("Red Hot Chili Peppers")
    artist.image = "/images/rhcp.jpg"
    artist.save

    artist = Artist.find_by_name("U2")
    artist.image = "/images/u2.jpg"
    artist.save

    artist = Artist.find_by_name("Beyonce")
    artist.image = "/images/beyonce.jpg"
    artist.save

    artist = Artist.find_by_name("Radiohead")
    artist.image = "/images/radiohead.jpg"
    artist.save

    artist = Artist.find_by_name("James Blunt")
    artist.image = "/images/jamesblunt.jpg"
    artist.save
  end

  def down
  end
end
