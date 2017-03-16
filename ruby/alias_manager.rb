# split into array and then seperate based on space.  swap
# make 4 strings to check if its equal to anything in any of the strings.  Make excpeitons for last letters of strings "Z", "z", "U", and "u".

def alias_name(name)

	vowels = "aeiou"
	vowels_caps = "AEIOU"
	consonants = "bcdfghjklmnpqrstvwxyz"
	consonants_caps = "BCDFGHJKLMNPQRSTVWXYZ"

	name_hash = {}

	name_split = name.split(' ')
	reverse_name = ""
	name_split.reverse_each {|word| reverse_name += "#{word} " }

	alias_name = reverse_name[0...-1]



# checks to see if consantant and lower case
index = 0
while index < alias_name.length
	consonants_index = 0
	while consonants_index < consonants.length
		if alias_name[index] == "z"
			alias_name[index] = "b"
			consonants_index = 21
		elsif alias_name[index] == consonants[consonants_index]
			alias_name[index] = consonants[consonants_index + 1]
			consonants_index = 21
		else
			consonants_index += 1
		end
	end
	index += 1
end


## checks to see if constant and upper case

index = 0
while index < alias_name.length
	consonants_caps_index = 0
	while consonants_caps_index < consonants_caps.length
		if alias_name[index] == "Z"
			alias_name[index] = "B"
			consonants_caps_index = 21
		elsif alias_name[index] == consonants_caps[consonants_caps_index]
			alias_name[index] = consonants_caps[consonants_caps_index + 1]
			consonants_caps_index = 21
		else
			consonants_caps_index += 1
		end
	end
	index += 1
end

## checks to see if vowel and lower case

index = 0
while index < alias_name.length
	vowels_index = 0
	while vowels_index < vowels.length
		if alias_name[index] == "u"
			alias_name[index] = "a"
			vowels_index = 21
		elsif alias_name[index] == vowels[vowels_index]
			alias_name[index] = vowels[vowels_index + 1]
			vowels_index = 21
		else
			vowels_index += 1
		end
	end
	index += 1
end

index = 0
while index < alias_name.length
	vowels_caps_index = 0
	while vowels_caps_index < vowels_caps.length
		if alias_name[index] == "U"
			alias_name[index] = "A"
			vowels_caps_index = 21
		elsif alias_name[index] == vowels_caps[vowels_caps_index]
			alias_name[index] = vowels_caps[vowels_caps_index + 1]
			vowels_caps_index = 21
		else
			vowels_caps_index += 1
		end
	end
	index += 1
end



end

loop do

puts "Please enter a name.  'quit to stop'"
name = gets.chomp
if name == "quit"
	break
else
puts "Alias: #{alias_name(name)}"
end
end
