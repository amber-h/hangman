class Game

	def play_game
		get_a_word
		hide_the_word
		guess_the_word

		puts user_word
	end

	def get_a_word
		@word = "victory"
	end

	def hide_the_word
		@user_word = word.gsub( /\w/, "_" )
	end

	def guess_the_word
		input = gets
	end

end



puts user_word