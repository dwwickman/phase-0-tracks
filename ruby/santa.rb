class Santa

	def initialize
		puts "Initializing Santa instance..."
	end

def speak
	puts "Ho, ho, ho!  Haaappy holidays!"
end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end

end

og_santa = Santa.new

og_santa.speak
og_santa.eat_milk_and_cookies("Chocolate Chip")