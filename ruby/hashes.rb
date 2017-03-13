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