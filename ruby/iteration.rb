def fav_movie
	puts "I LOVE MOVIES"
	yield("Scream", "Rosemary's Baby")
end

fav_movie { |movie1, movie2| puts "2 of them are:  #{movie1} and #{movie2}"}