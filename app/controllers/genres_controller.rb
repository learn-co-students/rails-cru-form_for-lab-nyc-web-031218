class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(genre_params)
    if @genre.valid?
      redirect_to @genre
    end
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
    if @genre.valid?
      redirect_to @genre
    end
  end

  def destroy
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end

  end
