class AddPriceColumns < ActiveRecord::Migration
  def self.up
    add_column "concerts","min_price", :integer
    add_column "concerts","max_price", :integer

    concerts = Concert.all
    for concert in concerts
      concert.min_price = 20
      concert.max_price = 100
      concert.save
    end
  end

  def self.down
    remove_column "concerts","min_price"
    remove_column "concerts","max_price"
  end
end
