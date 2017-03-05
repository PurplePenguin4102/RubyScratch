require './StarField'

class GameState
	attr_accessor :current_status, 
	:players, 
	:battles_running,
	:whose_turn,
	:turn_count

	def initialize
		@players = 2
		@player1 = Player.new
		@player2 = Player.new
		@battles_running = []
		@whose_turn = 1
		@turn_count = 1
		@star_field = StarField.new
	end

	def inspect
		"Players :: #{@players}\nSystem :: #{@star_field.to_s}\nPlayer 1 ships/planets : #{@player1.ships}/#{@player1.planets} \t Player 2 ships/planets : #{@player2.ships}/#{@player2.planets}"
	end

	def to_s
		inspect
	end
end

def update_game_state (game_state, player_input)
	puts "Your move has made an effect"
	game_state.current_status = "game_over"
end