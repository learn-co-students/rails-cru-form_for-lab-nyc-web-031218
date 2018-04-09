class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    set_genre
  end

  def create
    @genre = Genre.create(genre_params(:name))
    redirect_to genre_path(@genre)
  end

  def edit
    set_genre
  end

  def update
    set_genre
    @genre.update(genre_params(:name))
    redirect_to genre_path(@genre)
  end

  private

  def genre_params(*args)
      params.require(:genre).permit(*args)
  end

  def set_genre
    @genre = Genre.find(params[:id])
  end
end
