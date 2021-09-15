# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# actor = Actor.new({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"})
# actor.save

# actor = Actor.new({first_name: "Mike", last_name: "Myers", known_for: "Shrek"})
# actor.save

# actor = Actor.new({first_name: "Jim", last_name: "Parsons", known_for: "Home"})
# actor.save

# actor = Actor.new({first_name: "Ryan", last_name: "Reynolds", known_for: "Detective Pikachu"})
# actor.save

# movie = Movie.new(
#   title:"Spies in Disguise",
#   year: 2019,
#   plot:"Super spy Lance Sterling and scientist Walter Beckett are almost exact opposites. Lance is smooth, suave and debonair. Walter is not. But what Walter lacks in social skills he makes up for in smarts and invention, creating the awesome gadgets Lance uses on his epic missions. But when events take an unexpected turn, Walter and Lance suddenly have to rely on each other in a whole new way. And if this odd couple can't learn to work as a team, the whole world is in peril."
# )
# movie.save

# movie = Movie.new(
#   title:"We Bare Bears: The Movie",
#   year: 2020,
#   plot:"Grizz, Panda and Ice Bear go on the run from a diabolical wildlife agent who is hot on their tails, as they try to outsmart him."
# )
# movie.save

# movie = Movie.new(
#   title:"Horton Hears A Who!",
#   year: 2008,
#   plot:"Animated elephant Horton (Jim Carrey) finds a speck of dust floating in the Jungle of Nool. Upon investigation of the speck, Horton discovers the tiny city of Who-ville and its residents, the Whos, which he can hear but cannot see. Horton forms a friendship with the mayor of Who-ville, Ned McDodd (Steve Carell), and promises to transport Who-ville to safety. However, Horton encounters opposition from his jungle neighbors, who don't want to believe in the existence of Who-ville."
# )
# movie.save

# Genre.create!([
#   {name:"animated"},
#   {name:"family"},
#   {name:"comedy"},
#   {name:"action"}
# ])

MovieGenre.create!([
  {movie_id: 4, genre_id:4},
  {movie_id: 4, genre_id:1},
  {movie_id: 4, genre_id:2},
  {movie_id: 7, genre_id:4},
  {movie_id: 7, genre_id:1},
  {movie_id: 6, genre_id:2},
  {movie_id: 6, genre_id:3}
])