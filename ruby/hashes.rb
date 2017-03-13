application = {}

puts "Enter Name:"
application[:name] = gets.chomp

puts "Enter Age:"
application[:age] = gets.chomp.to_i

puts "Enter Number of Children:"
application[:number_of_children] = gets.chomp.to_i

puts "Enter Decor Theme:"
application[:decor_theme] = gets.chomp

puts "Enter Address:"
application[:address] = gets.chomp

puts "Enter Email:"
application[:email] = gets.chomp

puts "Ready to Start immediately? (yes/no)"
response = gets.chomp
if response == "yes"
	application[:start_immediately] = true
else
	application[:start_immediately] = false
end

p application


puts "Would you like to update any information?"
puts "'none' to skip"
puts "'name' for name"
puts "'age' for age"
puts "'number_of_children' for number of children"
puts "'decor_theme' for decor theme"
puts "'address' for address"
puts "'email for email"
puts "'start_immediately' for start immediately"

change_response = gets.chomp