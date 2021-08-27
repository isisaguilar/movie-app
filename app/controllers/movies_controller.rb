class MoviesController < ApplicationController

  def all_movies
  movies = Movie.all
  render json: movies.as_json
  end
  
  def one_movie
    input = params[:id].to_i
    movie = Movie.find(input)
    render json: movie.as_json
  end
  
end
