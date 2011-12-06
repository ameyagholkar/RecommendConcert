class LikedGenresController < ApplicationController
  # GET /liked_genres
  # GET /liked_genres.json
  def index
    @liked_genres = LikedGenre.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @liked_genres }
    end
  end

  # GET /liked_genres/1
  # GET /liked_genres/1.json
  def show
    @liked_genre = LikedGenre.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @liked_genre }
    end
  end

  # GET /liked_genres/new
  # GET /liked_genres/new.json
  def new
    @liked_genre = LikedGenre.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @liked_genre }
    end
  end

  # GET /liked_genres/1/edit
  def edit
    @liked_genre = LikedGenre.find(params[:id])
  end

  # POST /liked_genres
  # POST /liked_genres.json
  def create
    @liked_genre = LikedGenre.new(params[:liked_genre])

    respond_to do |format|
      if @liked_genre.save
        format.html { redirect_to @liked_genre, notice: 'Liked genre was successfully created.' }
        format.json { render json: @liked_genre, status: :created, location: @liked_genre }
      else
        format.html { render action: "new" }
        format.json { render json: @liked_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /liked_genres/1
  # PUT /liked_genres/1.json
  def update
    @liked_genre = LikedGenre.find(params[:id])

    respond_to do |format|
      if @liked_genre.update_attributes(params[:liked_genre])
        format.html { redirect_to @liked_genre, notice: 'Liked genre was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @liked_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /liked_genres/1
  # DELETE /liked_genres/1.json
  def destroy
    @liked_genre = LikedGenre.find(params[:id])
    @liked_genre.destroy

    respond_to do |format|
      format.html { redirect_to liked_genres_url }
      format.json { head :ok }
    end
  end
end
