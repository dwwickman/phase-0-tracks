class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0		
	end

def speak
	puts "Ho, ho, ho!  Haaappy holidays!"
end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end

end

og_santa = Santa.new("agender", "mystical creature")

og_santa.speak
og_santa.eat_milk_and_cookies("Chocolate Chip")

