#define a class with initial capital

class Spaceship
	#defining property
    attr_accessor :name
    #read only
    attr_reader :serial
    #write only
    attr_writer :coronation

    def initialize
    	@serial = rand(10000)
    end
    #Explicit accessor
	#define class method
	def destination=(destination)
		#@ denotes an instance variable
		@destination = destination
	end

	#getter
	def destination
		#implicitly returned
		@destination
	end

	def launch(dest)
		@destination = dest
	end

	#class method, does not depend on class state
	def self.thruster_count
		2
	end
	#Class variables are shared between subclasses and
	# are considered dangerous
	@@windows = 4

	#private methods
	def turn_on_engine
		@engine = true
	end
	private :turn_on_engine

end

#Factory method
ship = Spaceship.new
#initialize called implicitly
puts "a spaceship has " + Spaceship.thruster_count.to_s + "thrusters"
#we have changed destination
ship.launch("Ceres")
puts "ship destination is " + ship.destination

ship.name = "unity"
puts "ship.name is " + ship.name

puts "ship.serial is " + ship.serial.to_s

ship.coronation = Time.now


a = "abc"
puts "old a = " + a
#Modifies in place because !
a.upcase!
puts "after upcase! a = " + a 

#does not create new object
b = a
puts "after b = a:"
puts "a = " + a
puts "b = " + b
puts "a.object_id " + a.object_id.to_s
puts "b.object_id " + b.object_id.to_s

#does create new object
b = a.clone
puts "after calling a.clone..."
puts "b.object_id " + b.object_id.to_s
puts "b = " + b