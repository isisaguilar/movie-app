class ActorsController < ApplicationController
  def one_actor
    input = params[:id].to_i
    actor = Actor.find(input)
    render json: actor.as_json
  end

  def actor_url
    input = params[:id].to_i
    actor = Actor.find(input)
    render json: actor.as_json
  end


  def actor_post
    input = params[:id]
    actor = Actor.find(input)
    render json: actor.as_json
  end

end
