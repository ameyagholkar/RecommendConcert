class SimilarArtistsController < ApplicationController
  # GET /similar_artists
  # GET /similar_artists.json
  def index
    @similar_artists = SimilarArtist.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @similar_artists }
    end
  end

  # GET /similar_artists/1
  # GET /similar_artists/1.json
  def show
    @similar_artist = SimilarArtist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @similar_artist }
    end
  end

  # GET /similar_artists/new
  # GET /similar_artists/new.json
  def new
    @similar_artist = SimilarArtist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @similar_artist }
    end
  end

  # GET /similar_artists/1/edit
  def edit
    @similar_artist = SimilarArtist.find(params[:id])
  end

  # POST /similar_artists
  # POST /similar_artists.json
  def create
    @similar_artist = SimilarArtist.new(params[:similar_artist])

    respond_to do |format|
      if @similar_artist.save
        format.html { redirect_to @similar_artist, notice: 'Similar artist was successfully created.' }
        format.json { render json: @similar_artist, status: :created, location: @similar_artist }
      else
        format.html { render action: "new" }
        format.json { render json: @similar_artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /similar_artists/1
  # PUT /similar_artists/1.json
  def update
    @similar_artist = SimilarArtist.find(params[:id])

    respond_to do |format|
      if @similar_artist.update_attributes(params[:similar_artist])
        format.html { redirect_to @similar_artist, notice: 'Similar artist was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @similar_artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /similar_artists/1
  # DELETE /similar_artists/1.json
  def destroy
    @similar_artist = SimilarArtist.find(params[:id])
    @similar_artist.destroy

    respond_to do |format|
      format.html { redirect_to similar_artists_url }
      format.json { head :ok }
    end
  end
end
