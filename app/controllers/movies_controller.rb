class MoviesController < ApplicationController

  def index
    movies = Movie.all
    render json: movies.as_json
  end


  def create
    movie = Movie.new(
      title:params[:title],
      year:params[:year],
      plot:params[:plot],
      director:params[:director],
      english:params[:english]
    )
    movie.save
    render json: movie.as_json
  end

  def show
    input = params[:id].to_i
    movie = Movie.find(input)
    render json: movie.as_json
  end

  def update
    movie = Movie.find(params[:id])
    movie.update(
      title:params[:title] || movie.title,
      year:params[:year] || movie.year,
      plot:params[:plot] || movie.plot,
      director:params[:director] || movie.director,
      english:params[:english] || movie.english
    )
    movie.save
    render json: movie.as_json
  end  

  def destroy
    input = params[:id].to_i
    movie = Movie.find(input)
    movie.destroy
    render json:{message:"the movie has been destroyed"}
  end

  

  
end
