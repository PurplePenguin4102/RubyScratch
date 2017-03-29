require 'Minitest/autorun'
require '../Requirements'

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

The relationship between planets and stars should be constrained so that habitable (playable) planets are 
between 0.6Au and 1.9Au from the nearest star, and two planets, if equidistant, must be in orbit at 
opposite ends.

1 Au = 150 Mkm, Mkm should be the standard unit of measurement
=end

class StellarObjectTests

	def test_constructor
		obj = StellarObject.new []
	end

	def test_distance_to_object
	end

	def test_friendly_text
	end

	def test_get_absolute_coordinates
	end

	def test_get_relative_coordinates
	end

end