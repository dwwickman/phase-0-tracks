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

	attr_reader :chances, :secret_word, :correct_letters_guessed, :wrong_letters_guessed, :encrypted_word
	attr_accessor :game_over

	def initialize(secret_word)

		@secret_word = secret_word.downcase
		@chances = @secret_word.length
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

end

#UI


puts "Player 1:  Enter a word"

secret_word = gets.chomp

game = Hangman.new(secret_word)

puts "Player 2:  Try and Guess the word:"
puts game.encrypted_word

while !game.game_over

	puts "Player 2:  Enter a letter:"
	letter_input = gets.chomp

	if game.incorrect_guess(letter_input)

		puts "WRONG GUESS!!!! You have #{game.chances} left"
		puts game.encrypted_word
		if game.chances == 0
			puts "YOU LOST"
			game.game_over = true
		end
	elsif game.correct_letter(letter_input)
		puts "GOOD GUESS You have #{game.chances} left"
		puts game.encrypted_word
		if game.encrypted_word == secret_word
			puts "YOU NAILED IT"
			game.game_over = true
		end
	end


end

puts "Thank you for playing"
