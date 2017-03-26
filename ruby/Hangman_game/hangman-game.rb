=begin
	
User 1 inputs a "secret word"
Word will be hidden with "_" 
User 2 has to guess secret word
User 2 gets the same amount of missed guesses and secret word LENGTH
User 2 doesn't get a missed guessed if letter is already guessed
User 2 loses if guesses > secret word LENGtH
User 2 wins if guesses secret word
Each correct guess fills in the blank letters
	
=end






class Hangman
	attr_reader :chances, :secret_word, :word_guessed, :correct_letters_guessed, :wrong_letters_guessed

def initialize(secret_word)

	@secret_word = secret_word.downcase!
	@chances = secret_word.length
	@correct_letters_guessed = []
	@wrong_letters_guessed = []
	@word_guessed = false
	
	
	
end

def update_chances_left
	put code here
end

def duplicate?(guess)
	@guessed_letters.include?(guess)
	
end

end


secret_word = "elephant"

game = Hangman.new(secret)