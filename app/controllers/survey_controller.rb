class SurveyController < ApplicationController
  def index
    #Get 5 random artists

    if Recommendation.find_by_user_id(session[:id])
      redirect_to "/recommendations"
    end

    @artists = Artist.all( :order => "RANDOM()", :limit => 5)

  end
end
