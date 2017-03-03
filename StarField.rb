class StarField
	attr_accessor :name, :planets, :stars, 

	def initialize(field_name = "Vega", planets = ["Ferend", "Malik", "Huoy"], stars = ["Vega-Prime"])
		@name = field_name
		@planets = planets
		@stars = stars
	end
	def inspect
		"Starfield info :- name: #{@name} planets: #{@planets} stars: #{@stars}"
	end
	def to_s
		inspect
	end
end