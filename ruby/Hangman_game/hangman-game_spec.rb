require_relative 'hangman-game'

describe Hangman do

	let (:game) { Hangman.new("test") }

	it "store secret word" do
		expect(game.secret_word).to eq "test"
	end

	it "sets guess count to secret word length" do
		expect(game.chances).to eq 4
	end

	it "checks encypt word" do
		expect(game.encrypted_word).to eq "____"
	end

	it "checks correct letters guessed" do
		expect(game.correct_letters_guessed).to eq []
	end

	it "checks wrong letters guessed" do
		expect(game.wrong_letters_guessed).to eq []
	end

	it "checks game over" do
		expect(game.game_over).to eq false
	end

	it "checks if chances updates" do
		game.incorrect_guess("a")
		expect(game.chances).to eq 3
	end

	it "chekcs if letter is put into wrong letters guessed array" do

		game.incorrect_guess("a")
		expect(game.wrong_letters_guessed).to eq ["a"]

	end





end





