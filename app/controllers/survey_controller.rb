class SurveyController < ApplicationController
  def index
    #Get 5 random artists

    if session[:id]
      if Recommendation.find_by_user_id(session[:id]) and !params[:survey_again]
        redirect_to "/recommendations"
      end
    end

    @artists = Artist.all( :order => "RANDOM()", :limit => 5)

  end
end
