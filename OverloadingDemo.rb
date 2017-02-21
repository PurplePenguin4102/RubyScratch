class Spaceship
	attr_accessor :name
	def initialize(name)
		@name = name
	end 
	# we overload the == method to make equality testing better
	def ==(other)
		self.name == other.name
	end
end

ship1 = Spaceship.new("Hyperion")
ship2 = ship1.clone

puts "ship 1 : " + ship1.name + " :: ship 2 : " + ship2.name
puts "ship 1 : " + ship1.object_id.to_s + " :: ship 2 : " + ship2.object_id.to_s
puts "Using .equal? we get " + ship1.equal?(ship2).to_s
puts "using overloaded == we get " + (ship1 == ship2).to_s