class Game


	def play_game
		get_a_word
		hide_the_word
		while @word != @user_word
			guess_the_word
			match_the_letter
		end

		
	end

	def get_a_word
		@word = "victory"

	end

	def hide_the_word
		@user_word = @word.gsub( /\w/, "_" )
		

	end

	def guess_the_word
		puts "Guess a letter"
		@input = gets.chomp
	end

	def match_the_letter
		index = 0

		@word.each_char do |l|
			#puts "input: #{@input} letter: #{l}"
			if l == @input
				@user_word[index] = @input
				#puts @user_word
				#puts @input
			end
			index += 1
		end
		puts @user_word
	end


end


game = Game.new
game.play_game
