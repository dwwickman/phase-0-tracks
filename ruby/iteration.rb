	puts "I LOVE MOVIES"
def fav_movie
	yield("Scream", "Rosemary's Baby")
end

fav_movie { |movie1, movie2| puts "2 of them are:  #{movie1} and #{movie2}"}



movie_genres = ["Horror", "Thriller", "Comedy", "Drama", "Romance"]


puts "Original Data:"
p movie_genres

movie_genres.each do |genre|
	puts genre
end

puts "After . each call:"
p movie_genres

movie_genres.map! do |genre|
	puts genre
	genre.upcase

end

puts "After map call"
p movie_genres



##########

genre_ranking = {1 => 'Horror', 2 => 'Comedy', 3 => 'Drama'}

genre_ranking.each do |ranking, genre|
puts "#{genre} is ranked # #{ranking} on my list"

end
