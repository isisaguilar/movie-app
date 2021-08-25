class ActorsController < ApplicationController
  def one_actor

    actor = Actor.find(1)
    render json: actor
    
  end

end
