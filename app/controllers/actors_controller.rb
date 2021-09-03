class ActorsController < ApplicationController
  def index
    actors = Actor.all
    render json: actors
  end


  def create
    actor = Actor.new(
      first_name:params[:first_name],
      last_name:params[:last_name],
      known_for:params[:known_for],
      gender:params[:gender],
      age:params[:age],movie_id:params[:movie_id]
    )
    actor.save
    render json: actor
  end

  def show
    input = params[:id].to_i
    actor = Actor.find(input)
    render json: actor
  end

  def update
    actor = Actor.find(params[:id])
    actor.update(
      first_name:params[:first_name] || actor.first_name,
      last_name:params[:last_name] || actor.last_name,
      known_for:params[:known_for] || actor.known_for,
      gender:params[:gender] || actor.gender,
      age:params[:age] || actor.age,
      movie_id:params[:movie_id] ||actor.movie_id
    )
    actor.save
    render json: actor
  end  

  def destroy
    input = params[:id].to_i
    actor = Actor.find(input)
    actor.destroy
    render json:{message:"actor has been destroyed"}
  end

end
