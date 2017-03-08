class StarField
	Rnd_Field_Names = ["Vega", "Omicron", "Iota", "Epsilon", "Alpha", "Terra", "Gamma", "Yupsilon", "Nu", "Mu", "Aliph"]
	Star_Names = ["Prime", "Secundus", "Tri", "Quattrus"]
	Planet_Names = ["Gany", "Medea", "Haven", "New Earth", "Melchior", "Jasper", "Balthazar", "Sargon", "Darius", 
					"Xerxes", "Leonidas", "Troy", "Aristotle", "Plato", "Socrates", "Xena", "Hercules", "Gorgon",
					"Argos", "St Luke", "St Matthew", "St Peter", "St Paul", "St Benjamin", "St Bartholemew", 
					"Luthor"]

	attr_accessor :field_name, :planets, :star_names

	def initialize(field_name = nil)
		@field_name = field_name || Rnd_Field_Names.sample
		num_planets = rand(10) + 2
		num_stars = rand(3) + 1
		planet_seeds = Planet_Names.sample(num_planets)
		@planets = []
		planet_seeds.each { |name| @planets << Planet.new(name) }
		
		@star_names = Star_Names.take(num_stars)
	end

	def inspect
		names = @star_names.map {|star| "#{@field_name}-#{star}"}.join(", ")
		"name: #{@field_name} planets: #{@planets.length} stars: #{names}"
	end

	def get_planet_names
		@planets.map { |planet| planet.name }.join(", ")
	end

	def to_s
		inspect
	end
end