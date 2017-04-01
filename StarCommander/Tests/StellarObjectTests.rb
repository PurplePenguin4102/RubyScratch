require 'minitest/autorun'
require './Requirements'

=begin
A stellar object is the parent class of any astral body that needs to track its position in relative space

this includes
- ships
- planets
- stars
- missiles travelling slower than mach 10

A stellar object should be able to know its distance to other stellar onjects and also be able to know its
relative coordinates in curvilinear terms. The player should not have access to the absolute view of the
starfield

Friendly text is given in Yaw, Roll and Pitch
Yaw - positivity indicates right
Pitch - positivity is up
Roll - 

1 Au = 150 Mkm, Mkm should be the standard unit of measurement
=end

class StellarObjectTests < Minitest::Test

	def test_constructor
		obj = StellarObject.new [1, 5, 10]
		assert obj.x == 1
		assert obj.y == 5
		assert obj.z == 10
		assert obj.name == "object"
	end

	def test_distance_to_object
		origin = StellarObject.new [0, 0, 0]
		obj = StellarObject.new [2, 3, 4]
		testDistance = Math.sqrt(2 ** 2 + 3 ** 2 + 4 ** 2)

		res = origin.distance_to(obj)
		assert res == testDistance
	end

	def test_friendly_text
		origin = StellarObject.new [0, 0, 0]
		obj = StellarObject.new [2, 3, 4]
		friendly = origin.display_distance(obj)
		
		assert "object is 5Mkm away" == friendly

	end

	def test_get_theta
		origin = StellarObject.new [0, 0, 0]
		obj = StellarObject.new [3, 4, 5]
		theta = Math.asin(4 / 5.0)
		real_theta = origin.get_theta(obj)
		puts "==="
		puts real_theta, theta
		puts "==="
		assert theta == real_theta
	end

	def test_get_relative_coordinates
		origin = StellarObject.new [0, 0, 0]
		obj = StellarObject.new [3, 4, 5]
		puts "==="
		puts origin.display_coords_rads(obj)
		puts "==="
	end

end