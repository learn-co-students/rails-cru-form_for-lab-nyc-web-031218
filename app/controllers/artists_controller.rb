class ArtistsController < ApplicationController
  def show
  @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(params[:artist].permit(:name))
    redirect_to @artist
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(params.require(:artist).permit(:name))
    redirect_to @artist
  end

  private

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
end
