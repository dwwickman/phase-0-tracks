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

puts encrypt(" zd")
