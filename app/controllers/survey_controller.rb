class SurveyController < ApplicationController
  def index
    #Get 5 random artists
    @artists = Artist.all( :order => "RANDOM()", :limit => 5)

  end
end
