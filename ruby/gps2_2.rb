# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create an empty hash
  # we will be splitting the string with a white space.
  #we will go through each value within the array and store it as the key value 
  # value of the key will be default quantity = 1 
  # print the list to the console using print method. 
  
def create(list_str)
	grocery_list = {}
	list_array = list_str.split(" ")

	list_array.map! do |item|
		grocery_list[item] = 1 
	end
	p grocery_list
	print_list(grocery_list)
	grocery_list
end 

#create("carrots apples cereal pizza")

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
	#we will take an item name and item quantity.
	#We will add the information to the hash.
		#item => keys
		#quantity => key's value 
# output: the hash list

def add(item_name, quantity, grocery_list)
  grocery_list[item_name] = quantity
  print_list(grocery_list)
  grocery_list
end




#add("burger", 2, grocery_list)


# Method to remove an item from the list
# input: the list , item name 
# steps: 
	#search the hash for the item name and then delete the item name from hash.
# output: the hash list 


def remove(grocery_list, item_name)
  grocery_list.delete(item_name)
  grocery_list
end

#remove(grocery_list, "burger")


# Method to update the quantity of an item
# input: the list, the item and quantity
# steps: 
	# search the hash keys for the item name 
	# assign new value to the specific key
# output: the hash list 


def update(grocery_list, item_name, quantity)
  grocery_list[item_name] = quantity
  print_list(grocery_list)
  grocery_list
end

#update(grocery_list, "burger", 3)

# Method to print a list and make it look pretty
# input: the list	
# steps:
	# Go through each value of the hash 
	# print keys and hash 
# output: the hash list 

def print_list(grocery_list)
  puts "This is your grocery list:"
  grocery_list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end

#grocery_list = {"carrots"=>1, "apples"=>1, "cereal"=>1, "pizza"=>1}

#print_list(grocery_list)

###Driver Code


create("carrots apples cereal pizza")








