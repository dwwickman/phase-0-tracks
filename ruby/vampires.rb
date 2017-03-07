puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
year_born = gets.chomp.to_i
actual_age = 2017 - year_born
if age == actual_age
	correct_age = true
else
	correct_age = false
end
puts "Our company cafeteria serves garlic bread.  Should we order some for you (Yes/No)?"
garlic_bread_response = gets.chomp
if garlic_bread_response == "Yes"
	garlic_bread_wanted = true
else
	garlic_bread_wanted = false
end
puts "Would you like to enroll in the company's health insurance? (Yes/No)"
health_insurance_resonse = gets.chomp
if health_insurance_resonse == "Yes"
	health_insurance_wanted = true
else
	health_insurance_wanted = false
end
p name
p age
p year_born
p correct_age
p garlic_bread_response
p garlic_bread_wanted
p health_insurance_resonse
p health_insurance_wanted

if name == "Drake Cula" || name == "Tu Fang"
	puts "defintely a vampire"
elsif !correct_age && !garlic_bread_wanted && !health_insurance_wanted
	puts "Almost certainly a vampire"
elsif !correct_age && (!garlic_bread_wanted || !health_insurance_wanted)
	puts "Probably a vampire"
elsif correct_age && (garlic_bread_wanted || health_insurance_wanted)
	puts "Probably not a vampire"
else
	puts "Results inconclusive"
end



