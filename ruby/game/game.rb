#declare a wordgame class
class WordGame
	attr_accessor :word, :blanks, :is_over, :guess_count, :used, :wordlength

	def initialize
		@word = ""
		@blanks = []
		@is_over = false
		@guess_count = 0
		@tries = 0
		@used = []
		@wordlength = 0
	end

#get a word
	def getword
		puts "Player 1 enter word"
		@word = gets.chomp
		@word = @word.split(//)
		p @word
		@wordlength = @word.length
	end

	


#count the length of the word

#announce number of guesses as 1.5 times length of word
	def guessnumber
		@tries = @wordlength * 3 / 2
		puts "player 2: you have #{@tries} guesses to get the word"
	end

#create and display blanks
	def make_blanks
	#make an array with "_ " pushed in the length times. Every time its printed use join method
		@wordlength.times do |x|
			@blanks << "_ "
		end
	end

#guessing: until all spaces filled or all tries used
	def start_guess
		until @is_over == true
	#player enters 1 letter string

			puts "guess a letter you've already guessed #{@used}. #{@tries-@guess_count} attempts remain"
			puts @blanks.join
			letter = gets.chomp
	#if letter is not in guessed box take a turn away
			if @used.include?(letter) == false
				@guess_count += 1
				if @tries == @guess_count 
					@is_over = true
				end
		#if letter is in the world replace the blank
				if @word.include?(letter)
					wordindex = @word.index(letter)
					@blanks[wordindex] = letter
					if @blanks.include?("_ ") == false
						@is_over = true
					end
		#if letter is not in the world add to guessed box
				else
					@used << letter
				end
	#if letter is in guessed box don't consume a turn
			else
				puts "you already tried that letter"
			end
		end

	#end:
	#if word is guessed correctly print congrants
		if @blanks.include?("_ ")
			puts "haha try harder next time"
	#if word is guessed wrong print taunt
		else
			puts "well done! you guessed the word"
		end
	end
end

puts "welcome to the WordGame!"
game = WordGame.new

game.getword
game.guessnumber
game.make_blanks
game.start_guess
