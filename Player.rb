class Player
	attr_accessor :name, :ships, :planets
	def initialize ()
		@ships = []
		@planets = []
		@name = ""
	end
end