class RecommendationsController < ApplicationController
  # GET /recommendations
  # GET /recommendations.json
  def index
    @user_id = session[:id]
    @artists = params[:artists]

    #check for information that may have come from the survey
    #if it's there, add the info to the database before listing recommendations

    #check the genres liked
    if params[:rock] == "1"
      #user likes rock genre
      g = LikedGenre.new
      g.user_id = @user_id
      g.genre = "Rock"
      g.save
    end
    if params[:pop] == "1"
      #user likes pop genre
      g = LikedGenre.new
      g.user_id = @user_id
      g.genre = "Pop"
      g.save
    end
    if params[:rap] == "1"
      #user likes rap genre
      g = LikedGenre.new
      g.user_id = @user_id
      g.genre = "Rap"
      g.save
    end
    if params[:country] == "1"
      #user likes country genre
      g = LikedGenre.new
      g.user_id = @user_id
      g.genre = "Country"
      g.save
    end

    #check the artist ratings
    if params[:artist0]
      if params[:artist0_rating]
        uar = UsersArtistRating.new
        uar.user_id = @user_id
        uar.artist_id = Artist.find_by_name(params[:artist0]).id
        uar.rating = params[:artist0_rating]
        uar.save
      end
    end
     if params[:artist1]
      if params[:artist1_rating]
        uar = UsersArtistRating.new
        uar.user_id = @user_id
        uar.artist_id = Artist.find_by_name(params[:artist1]).id
        uar.rating = params[:artist1_rating]
        uar.save
      end
     end
     if params[:artist2]
      if params[:artist2_rating]
        uar = UsersArtistRating.new
        uar.user_id = @user_id
        uar.artist_id = Artist.find_by_name(params[:artist2]).id
        uar.rating = params[:artist2_rating]
        uar.save
      end
     end
    if params[:artist3]
      if params[:artist3_rating]
        uar = UsersArtistRating.new
        uar.user_id = @user_id

        uar.artist_id = Artist.find_by_name(params[:artist3]).id
        uar.rating = params[:artist3_rating]
        uar.save
      end
    end
    if params[:artist4]
      if params[:artist4_rating]
        uar = UsersArtistRating.new
        uar.user_id = @user_id
        uar.artist_id = Artist.find_by_name(params[:artist4]).id
        uar.rating = params[:artist4_rating]
        uar.save
      end
    end

    @recommendations = Recommendation.find_all_by_user_id(@user_id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recommendations }
    end
  end

  # GET /recommendations/1
  # GET /recommendations/1.json
  def show
    @recommendation = Recommendation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recommendation }
    end
  end

  # GET /recommendations/new
  # GET /recommendations/new.json
  def new
    @recommendation = Recommendation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recommendation }
    end
  end

  # GET /recommendations/1/edit
  def edit
    @recommendation = Recommendation.find(params[:id])
  end

  # POST /recommendations
  # POST /recommendations.json
  def create
    @recommendation = Recommendation.new(params[:recommendation])

    respond_to do |format|
      if @recommendation.save
        format.html { redirect_to @recommendation, notice: 'Recommendation was successfully created.' }
        format.json { render json: @recommendation, status: :created, location: @recommendation }
      else
        format.html { render action: "new" }
        format.json { render json: @recommendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recommendations/1
  # PUT /recommendations/1.json
  def update
    @recommendation = Recommendation.find(params[:id])

    respond_to do |format|
      if @recommendation.update_attributes(params[:recommendation])
        format.html { redirect_to @recommendation, notice: 'Recommendation was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @recommendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recommendations/1
  # DELETE /recommendations/1.json
  def destroy
    @recommendation = Recommendation.find(params[:id])
    @recommendation.destroy

    respond_to do |format|
      format.html { redirect_to recommendations_url }
      format.json { head :ok }
    end
  end
end
