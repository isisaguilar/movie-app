require "http"

system "clear"
puts "Welcome to the Movie App!"
puts "Input a number 1-6 to pick a movie and get info about it."

input = gets.chomp

response = HTTP.get ("http://localhost:3000/one_movie/#{input}")

movie = response.parse(:json)

puts "Here is the movie info: #{movie}"