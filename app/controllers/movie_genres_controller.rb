class MovieGenresController < ApplicationController
  def create
    movie_genre = MovieGenre.new(
      movie_id:params[:movie_id],
      genre_id:params[:genre_id]
    )
    movie_genre.save
    render json:{message:"The deed is done."}
  end
end
