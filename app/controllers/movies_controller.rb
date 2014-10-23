class MoviesController < ApplicationController

  def show
    @movie = Movie.find(params[:id])
    @genres = @movie.genres.where("movies_count > 4").shuffle[0..30]
  end

end
