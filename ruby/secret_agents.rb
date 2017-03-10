#psuedocode
#encrypt
#make a loop change index.  use next method to switch character.  if statment for blank characters and if statement for z so it doesn't go to aa
#decrypt
#compare updated password to "abcdefghijklmnoprstuvwxyz".  If letters match move index in alpabet back by 1.  If statment for a. If statment for " ".
def encrypt(password)
	index = 0
	while index < password.length
		if password[index] == " "
			password[index] = " "
			elsif password[index] == "z"
				password[index] = "a"
			else
				password[index] = password[index].next
		end
		index += 1
	end
	password
end

def decrypt(password)
alphabet = "abcdefghijklmnoprstuvwxyz"
index = 0
while index < password.length
	alphabet_index = 0
	while alphabet_index < alphabet.length
		if password[index] == " "
			password[index] = " "
			alphabet_index = 26
		elsif password[index] == "a"
			password[index] = "z"
			alphabet_index = 26
		elsif password[index] == alphabet[alphabet_index]
			password[index] = alphabet[alphabet_index - 1]
			alphabet_index = 26
		else
			alphabet_index += 1
		end
	end
	index += 1
end
	password
end

puts decrypt("afe")

