def print_game_state (game)
	if (game.turn_count == 1)
		puts game.get_introduction
	end
	puts game
	puts "===================="
end