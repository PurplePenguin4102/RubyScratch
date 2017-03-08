Rnd_player_names = ["Melchor", "Terria", "Generoth", "Jaharazhad", "Amos", "Dezzo", "Z", "Xarrat", "Xxyx", 
					"Yuttip", "Troa", "Kherrith", "Ia", "Llemmeroth", "Oot", "Porato", "Q'Zix", "Restevan"]

class Player

	attr_accessor :name, :ships, :planets, :has_advanced_scanner
	
	def initialize (plr_name = "")
		@ships = []
		@planets = []
		@name = plr_name
		@name = Rnd_player_names.sample if name == "" 
		@has_advanced_scanner = false
 	end

 	def has_advanced_scanner?
 		@has_advanced_scanner
 	end

 	def to_s
 		"Callsign : #{@name} -- ships/planets : #{@ships}/#{@planets}"
 	end
end