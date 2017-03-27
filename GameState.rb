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

As you know, the #{@player1.empire.name} empire was victorious over the evil #{@player2.empire.name}. As a decorated military hero, you have
been tasked to secure the frontier sectors. You move your family to the #{@star_field.field_name} star field, and prepare
yourself mentally for the difficult task ahead.

Already, it seems that a challenge awaits you. The planets in the star system, beleaguered by the constant war, have declared
themselves as independent governments, separate from the galactic alliance. It will be up to you as star commander to bring
this wayward system to heel.

You have only your capital ship and your loyal crew at your command, with a rebellious star system before you, and the constant
threat of a #{player2.empire.name} commander taking the precious resources that rightfully belong to the #{player1.empire.name} empire.)
	end

	def to_s
		inspect
	end
end