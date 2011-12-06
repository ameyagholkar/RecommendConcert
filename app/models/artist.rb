class Artist < ActiveRecord::Base

  validates_presence_of :name ,:genre
end
