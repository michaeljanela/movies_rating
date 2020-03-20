#!/usr/bin/env ruby

movies = {
    StarWars: 4.7,
    Divergent: 4.6 
}

puts "what would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie"
puts "-- Type 'display' to display a movie"
puts "-- Type 'delete' to delete a movie"

choice = gets.chomp

case choice
when "add"
    title = gets.chomp
    if movies[title.to_sym] != nil
        puts "the movie already exists"
    else
        puts "rating of the movie"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
    end
when "update"
    title = gets.chomp
    if movies[title.to_sym] == nil
        puts "no movie! add movie"
    else
        puts "update rating"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
    end
when "display"
    movies.each do |title, rating|
        puts "#{title}: #{rating}"
    end
when "delete"
    title = gets.chomp
    if movies[title.to_sym] == nil
        puts "no movie!"
    else
        movies.delete(title.to_sym)
    end
else
    puts "Error!"
end
