Rnd_field_names = ["Vega", "Omicron", "Iota", "Epsilon", "Alpha", "Terra", "Gamma", "Yupsilon", "Nu", "Mu", "Aliph"]
Star_names = ["Prime", "Secundus", "Tri", "Quattrus"]
Planet_names = ["Gany", "Medea", "Haven", "New Earth", "Melchior", "Jasper", "Balthazar", "Sargon", "Darius", 
				"Xerxes", "Leonidas", "Troy", "Aristotle", "Plato", "Socrates", "Xena", "Hercules", "Gorgon",
				"Argos", "St Luke", "St Matthew", "St Peter", "St Paul", "St Benjamin", "St Bartholemew", 
				"Luthor"]

class StarField
	attr_accessor :field_name, :planets, :star_name

	def initialize(field_name = "", planets = [], star_name = [])
		@field_name = Rnd_field_names.sample if field_name == "" else field_name
		rng = Random.new
		num_planets = rng.rand(10) + 2
		@planets = Planet_names.sample(num_planets)
		num_stars = rng.rand(3) + 1
		@star_name = Star_names.take(num_stars)
	end
	def inspect
		names = ""
		planets = ""
		@star_name.each {|star| names += "#{@field_name}-#{star}, "}
		@planets.each {|pl| planets += "#{pl}, "}
		"name: #{@field_name} planets: #{planets} stars: " + "#{names}"
	end
	def to_s
		inspect
	end
end