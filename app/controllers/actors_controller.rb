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
    if actor.save
      render json: actor
    else
      render json: actor.errors.full_messages
    end
  end

  def show
    input = params[:id].to_i
    actor = Actor.find(input)
    render json: actor
  end

  def update
    actor = Actor.find(params[:id])
    actor.update(
      first_name:params[:first_name],
      last_name:params[:last_name],
      known_for:params[:known_for],
      gender:params[:gender],
      age:params[:age],
      movie_id:params[:movie_id]
    )
    if actor.save
      render json: actor
    else
      render json: actor.errors.full_messages
    end
  end  

  def destroy
    input = params[:id].to_i
    actor = Actor.find(input)
    actor.destroy
    render json:{message:"actor has been destroyed"}
  end

end
