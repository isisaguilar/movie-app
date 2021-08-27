Rails.application.routes.draw do
  
get "/one_actor", controller: "actors", action:"one_actor"

get "/all_movies", controller: "movies", action: "all_movies"

get "/one_movie/:id", controller: "movies", action: "one_movie"

end
