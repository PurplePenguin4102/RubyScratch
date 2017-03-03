require './StarField'

class GameState
	attr_accessor :current_status, 
	:players, 
	:player_1_ships, 
	:player_2_ships, 
	:player_1_planets, 
	:player_2_planets, 
	:battles_running,
	:whose_turn,
	:turn_count

	def initialize
		@players = 2
		@player_1_ships = []
		@player_2_ships = []
		@battles_running = []
		@player_1_planets = []
		@player_2_planets = []
		@whose_turn = 1
		@turn_count = 1
		@star_field = StarField.new
	end

	def inspect
		"Players : #{@players} System : #{@star_field}\nPlayer 1 ships/planets : #{@player_1_ships}/#{@player_1_planets} \t Player 2 ships/planets : #{@player_2_ships}/#{@player_2_planets}"
	end

	def to_s
		inspect
	end
end

def update_game_state (game_state, player_input)
	puts "Your move has made an effect"
	game_state.current_status = "game_over"
end