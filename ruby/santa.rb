class Santa

	attr_accessor :age, :gender
	attr_reader :ethnicity, :reindeer_ranking

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
		@age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking << reindeer
	end
end


#og_santa = Santa.new("agender", "mystical creature")

#og_santa.speak
#og_santa.eat_milk_and_cookies("Chocolate Chip")

santas_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
santas_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

#santas_genders.length.times do |i|
#	santas << Santa.new(santas_genders[i], santas_ethnicities[i])
#end

santas = []


250.times do
	new_santa = Santa.new(santas_genders.sample, santas_ethnicities.sample)
	new_santa.age = rand(141)
	#puts new_santa.age
	#puts new_santa.gender
	#puts new_santa.ethnicity
	santas << new_santa
end





	puts santas[0].speak
	puts santas[0].eat_milk_and_cookies("Chocolate Chip")
	puts santas[0].age
	puts santas[0].celebrate_birthday
	puts santas[0].reindeer_ranking
	puts "-----------"
	puts santas[0].get_mad_at("Vixen")






