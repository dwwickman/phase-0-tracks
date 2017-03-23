class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0		
	end

	#getter methods

	def age
		@age
	end

	def ethnicity
		@ethnicity
	end

	#setter methods

	def gender=(new_gender)
		@gender = gender
	end

	def speak
		puts "Ho, ho, ho!  Haaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end

	def celebrate_birthday
		@age =+ 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking << reindeer
	end
end


#og_santa = Santa.new("agender", "mystical creature")

#og_santa.speak
#og_santa.eat_milk_and_cookies("Chocolate Chip")

santas = []
santas_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
santas_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

santas_genders.length.times do |i|
	santas << Santa.new(santas_genders[i], santas_ethnicities[i])
end

250.times do
	puts new_santa = Santa.new[santas_genders.sample, santas_ethnicities.sample]
	puts new_santa.age = rand(141)
	puts new_santa.ethnicity
	puts new_santa.gender
	puts new_santa.speak
	puts new_santa.eat_milk_and_cookies("Chocolate Chip")