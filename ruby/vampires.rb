puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
year_born = get.chomp.to_i
actual_age = 2017 - year_born
if age == actual_age
	correct_age = true
else
	correct_age = false
end
puts "Our company cafeteria serves garlic bread.  Should we order some for you (Yes/No)?"
garlic_bread_response = gets.chomp
puts "Would you like to enroll in the company's health insurance? (Yes/No)"
health_insurance_wanted = gets.chomp

