class StarField
	attr_accessor :star_name, :planets, :stars

	def initialize(field_name = "Vega", planets = ["Ferend", "Malik", "Huoy"], stars = ["Vega-Prime"])
		@star_name = field_name
		@planets = planets
		@stars = stars
	end
	def inspect
		"name: #{@star_name} planets: #{@planets} stars: #{@stars}"
	end
	def to_s
		inspect
	end
end