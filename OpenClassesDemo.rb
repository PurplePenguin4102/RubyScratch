#We can begin a class definition

class Spaceship
	attr_accessor :name
	def initialize(name)
		@name = name
	end
	def greet_captain(greeting)
		puts greeting + ", Captain!"
	end
end

# class now works
ship = Spaceship.new("Imperion")

puts "ship's name : " + ship.name
puts "now we monkey patch on a destination..."

# we can now reopen the class to add new functions or
# overwrite old functionality (dangerous)
class Spaceship
	attr_accessor :destination
	def launch(place)
		@destination = place
	end
end

ship.launch("Omega 3")

puts "ship's destination : " + ship.destination 