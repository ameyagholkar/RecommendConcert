class UsersArtistRatingsController < ApplicationController
  # GET /users_artist_ratings
  # GET /users_artist_ratings.json
  def index
    @users_artist_ratings = UsersArtistRating.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users_artist_ratings }
    end
  end

  # GET /users_artist_ratings/1
  # GET /users_artist_ratings/1.json
  def show
    @users_artist_rating = UsersArtistRating.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @users_artist_rating }
    end
  end

  # GET /users_artist_ratings/new
  # GET /users_artist_ratings/new.json
  def new
    @users_artist_rating = UsersArtistRating.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @users_artist_rating }
    end
  end

  # GET /users_artist_ratings/1/edit
  def edit
    @users_artist_rating = UsersArtistRating.find(params[:id])
  end

  # POST /users_artist_ratings
  # POST /users_artist_ratings.json
  def create
    @users_artist_rating = UsersArtistRating.new(params[:users_artist_rating])

    respond_to do |format|
      if @users_artist_rating.save
        format.html { redirect_to @users_artist_rating, notice: 'Users artist rating was successfully created.' }
        format.json { render json: @users_artist_rating, status: :created, location: @users_artist_rating }
      else
        format.html { render action: "new" }
        format.json { render json: @users_artist_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users_artist_ratings/1
  # PUT /users_artist_ratings/1.json
  def update
    @users_artist_rating = UsersArtistRating.find(params[:id])

    respond_to do |format|
      if @users_artist_rating.update_attributes(params[:users_artist_rating])
        format.html { redirect_to @users_artist_rating, notice: 'Users artist rating was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @users_artist_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_artist_ratings/1
  # DELETE /users_artist_ratings/1.json
  def destroy
    @users_artist_rating = UsersArtistRating.find(params[:id])
    @users_artist_rating.destroy

    respond_to do |format|
      format.html { redirect_to users_artist_ratings_url }
      format.json { head :ok }
    end
  end
end
