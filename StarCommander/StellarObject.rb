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
		"#{stellar_object.name} is #{self.distance_to(stellar_object)}Mkm away"
	end

	#phi displays the angle of difference in yz plane
	def get_phi(stellar_object)
		dy = stellar_object.y - @y
		dz = stellar_object.z - @z
		yz_hyp = Math.sqrt(dy ** 2 + dz ** 2)
		Math.asin(dz / yz_hyp)
	end

	#theta displays the angle of difference in the xy plane
	def get_theta(stellar_object)
		dx = stellar_object.x - @x
		dy = stellar_object.y - @y
		xy_hyp = Math.sqrt(dx ** 2 + dy ** 2)
		Math.asin(dy / xy_hyp)
	end

	def display_coords_rads(stellar_object)
		%Q(Relative to universal coordinated center #{stellar_object.name} is 
#{self.distance_to(stellar_object)}Mkm away at 
\u03B8 #{self.get_theta(stellar_object)} and 
\u03D5 #{self.get_phi(stellar_object)}).encode('utf-8')
	end
end
