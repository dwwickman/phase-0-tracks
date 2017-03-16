arr = [42, 89, 23, 1]


def search_array(arr, number)

current_index = 0
result = nil

arr.each do |number_search|
	if number_search == number
		result = current_index
	end
	current_index += 1
end
 p result
end

search_array(arr, 1)

def fib(number)
	arr = [0, 1]
	if number > 2
		index = 2
		while index < number
			arr[index] = arr[index - 1] + arr[index - 2]
			index += 1
		end
	end
	arr
end

p fib(100)


#insertion sort
#make a array
#transfer index 0 of sorting array to array
#delete index of sorting array
#compare each index to each value of array - insert if greater than current value

arr = [1, 5, 3, 4, 6, 3]
def inseration_sort(arr)

	final = [arr[0]]
	arr.delete_at(0)

for int in arr

	final_index = 0

	while final_index < final.length

		if int <= final[final_index]
			final.insert(final_index, int)
			break
		elsif final_index == final.length-1
			final.insert(final_index + 1, int)
			break
		end
		final_index += 1

	end

end
	final
end

p inseration_sort(arr)
