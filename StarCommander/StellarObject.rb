class StellarObject
	attr_accessor :x, :y, :z, :name

	def initialize(coords, name = nil)
		@x = coords[0]
		@y = coords[1]
		@z = coords[2]
		@name = name || "object"
	end

	def distance_to(stellar_object)
		dx = @x - stellar_object.x
		dy = @y - stellar_object.y
		dz = @z - stellar_object.z
		Math.sqrt(dx ** 2 + dy ** 2 + dz ** 2)
	end

	def display_distance(stellar_object)
		
	end
end
