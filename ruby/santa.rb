class Santa

	def initialize
		puts "initialzing Santa instance ..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie"
	end

end

orignal_santa = Santa.new

orignal_santa.speak
orignal_santa.eat_milk_and_cookies("Chocolate Chip")