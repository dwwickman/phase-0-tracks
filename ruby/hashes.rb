#make an empty hash to store values
#ask user to input and store values
#convert number strongs to numbers using to_i method
#convert boolean to boolean using if == yes
#print applicaiton
#Ask user if they would like to change response - if == none skip
#if statment for if equal to what they want to change
#use to symbol method to access the key youw want to change
# print updated application


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

if change_response == "none"
	puts "no change requested"

elsif change_response == "name"
	puts "Update Value:"
	application[change_response.to_sym] = gets.chomp

elsif change_response == "age"
	puts "Update Value:"
	application[change_response.to_sym] = gets.chomp.to_i

elsif change_response == "number_of_children"
	puts "Update Value:"
	application[change_response.to_sym] = gets.chomp.to_i

elsif change_response == "decor_theme"
	puts "Update Value:"
	application[change_response.to_sym] = gets.chomp

elsif change_response == "address"
	puts "Update Value:"
	application[change_response.to_sym] = gets.chomp


elsif change_response == "email"
	puts "Update Value:"
	application[change_response.to_sym] = gets.chomp


elsif change_response == "start_immediately"
	puts "Update Value"
	if gets.chomp == "yes"
		application[:start_immediately] = true
	else
		application[:start_immediately] = false
	end
end

p application

