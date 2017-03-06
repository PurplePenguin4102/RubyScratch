Rnd_player_names = ["Melchor", "Terria", "Generoth", "Jaharazhad", "Amos", "Dezzo", "Z", "Xarrat", "Xxyx", 
					"Yuttip", "Troa", "Kherrith", "Ia", "Llemmeroth", "Oot", "Porato", "Q'Zix", "Restevan"]

class Player
	attr_accessor :name, :ships, :planets
	def initialize (plr_name = "")
		@ships = []
		@planets = []
		@name = plr_name
		@name = Rnd_player_names.sample if name == "" 
 	end

 	def to_s
 		"Callsign : #{@name} -- ships/planets : #{@ships}/#{@planets}"
 	end
end