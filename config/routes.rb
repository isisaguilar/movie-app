Rails.application.routes.draw do
  
get "/one_actor" => "actors#index"

post "/one_actor" => "actors#create"

get "/one_actor/:id" => "actors#show"

patch "/one_actor/:id" => "actors#update"

delete "/one_actor/:id" => "actors#destroy"

get "/one_movie" => "movies#index"

post "/one_movie" => "movies#create"

get "/one_movie/:id" => "movies#show"

patch "/one_movie/:id" => "movies#update"

delete "/one_movie/:id" => "movies#destroy"

post "/users" => "users#create"

post "/sessions" => "sessions#create"

end
