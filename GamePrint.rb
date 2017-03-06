def print_game_state (game)
	if (game.turn_count == 1)
		puts "Welcome to the game... What is your name star commander (blank to randomise)?"
		print "::> "
		plr = gets.chomp
		game.make_players(plr)
		puts "You have been registered as \"#{game.player1.name}\" - star commander." 
	end

	puts game
	puts "===================="

end