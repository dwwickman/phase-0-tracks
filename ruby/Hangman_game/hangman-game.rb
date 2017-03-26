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
	attr_reader :chances, :secret_word, :game_over, :correct_letters_guessed, :wrong_letters_guessed, :encrypted_word

	def initialize(secret_word)

		@secret_word = secret_word.downcase
		@chances = secret_word.length
		@correct_letters_guessed = []
		@wrong_letters_guessed = []
		@encrypted_word = "_" * secret_word.split(//).length
		@game_over = false

	end

	def correct_guess(letter)

		if @correct_letters_guessed.include?(letter)
			puts "You already guessed this correct letter"
			@encrypted_word
		elsif @secret_word.include?(letter)
			@correct_letters_guessed << letter
			correct_letter(letter)
		end
	end

	def correct_letter(letter)

		counter = 0
		while counter < secret_word.length
			if @secret_word[counter] == letter
				@encrypted_word[counter] = letter
			end
			counter += 1
		end
		@encrypted_word
	end



	def incorrect_guess(letter)

		if @wrong_letters_guessed.include?(letter)
			puts "Sorry...You already gussed that letter"
			@encrypted_word
		elsif !@secret_word.include?(letter)
			@wrong_letters_guessed << letter
			@chances -= 1
		end
	end

	def finish_game
		if @chances == 0
			@game_over = true
		elsif @encrypted_word == secret_word
			@game_over = true
		end
	end

end


#secret_word = "test"

#game = Hangman.new(secret_word)