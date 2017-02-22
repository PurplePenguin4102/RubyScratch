class GameState
	attr_accessor :current_status
end

def update_game_state (game_state)
	puts "Your move has made an effect"
	game_state.current_status = "game_over"
end