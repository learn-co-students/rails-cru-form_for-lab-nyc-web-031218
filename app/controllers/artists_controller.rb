class ArtistsController < ApplicationController
  #string name, string bio

  def index
    @artists = Artist.all

  end

  def show
    @artist = Artist.find(params[:id])

  end

  def new
    @artist = Artist.new

  end

  def create
    @artist = Artist.create(params[:artist].permit(:name, :bio))

    redirect_to artist_path(@artist.id)

  end

  def edit
    @artist = Artist.find(params[:id])


  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(params[:artist].permit(:name, :bio))

    redirect_to artist_path(@artist.id)

  end


end
