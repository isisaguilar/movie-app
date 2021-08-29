Rails.application.routes.draw do
  
get "/one_actor" => "actors#one_actor"

get "/one_actor/:id" => "actors#actor_url"

post "/one_actor" => "actors#actor_post"

get "/all_movies", controller: "movies", action: "all_movies"

get "/one_movie/:id", controller: "movies", action: "one_movie"

end
