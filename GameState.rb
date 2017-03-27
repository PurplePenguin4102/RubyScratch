class GameState
	attr_accessor :current_status, 
	:players, 
	:battles_running,
	:whose_turn,
	:turn_count,
	:player1,
	:player2,
	:star_field

	def initialize
		@players = 2
		@player1 = Player.new :prompt_name
		@player2 = Player.new
		@battles_running = []
		@whose_turn = 1
		@turn_count = 1
		@star_field = StarField.new
	end

	def make_players (plr_name = "")
		@player1 = Player.new(plr_name)
		@player2 = Player.new
	end

	def inspect
		"Players :: #{@players}\nSystem :: #{@star_field}\nPlayer 1 #{@player1}\nPlayer 2 #{@player2}"
	end

	def get_introduction
		year = rand(3000..4999)
		time = rand(20..59)
		%Q(
Welcome star commander "#{@player1.name}". The year is #{year}. It has been #{time} years since the last great planetary conflict.
As you know, the Kilardi empire was victorious over the evil Meledans. As a decorated military hero, you have
been tasked to secure the frontier sectors. You move your to the #{@star_field.field_name} star field, and prepare
yourself mentally for the difficult task ahead.)
	end

	def to_s
		inspect
	end
end