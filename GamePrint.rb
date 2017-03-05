def print_game_state (game)
	if (game.turn_count == 1)
		puts "Welcome to the game... What is your name star commander?"
		print "::> "
		plr = gets.chomp
		puts "You have been registered as \"#{plr}\" - star commander." 
	end

	puts game
	puts "===================="

end