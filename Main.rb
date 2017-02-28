require './Requirements'

s = Spaceship.new
pl = Planet.new
game_state = GameState.new

loop do
	print_game_state(game_state)
	player_input = get_player_input
	update_game_state(game_state, player_input)
	evaluate_score
	calculate_enemy_move
	player_input = update_game_state(game_state, player_input)
	if game_state.current_status == :game_over.to_s
		break
	end
end

