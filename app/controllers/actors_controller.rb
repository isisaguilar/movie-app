class ActorsController < ApplicationController
  def index
    actors = Actor.all
    render json: actors.as_json
  end


  def create
    actor = Actor.new(
      first_name:params[:first_name],
      last_name:params[:last_name],
      known_for:params[:known_for]
    )
    actor.save
    render json: actor
  end

  def show
    input = params[:id].to_i
    actor = Actor.find(input)
    render json: actor.as_json
  end

  def update
    actor = Actor.find(params[:id])
    actor.update(
      first_name:params[:first_name] || actor.first_name,
      last_name:params[:last_name] || actor.last_name,
      known_for:params[:known_for] || actor.known_for,
    )
    actor.save
    render json: actor.as_json
  end  

  def destroy
    input = params[:id].to_i
    actor = Actor.find(input)
    actor.destroy
    render json:{message:"actor has been destroyed"}
  end


  def actor_post
    input = params[:id]
    actor = Actor.find(input)
    render json: actor.as_json
  end

end
