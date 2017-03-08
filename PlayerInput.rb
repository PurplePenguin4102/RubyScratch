def get_player_input (game_state)
	loop do
		print "Your move chum ::> "
		inp = gets.chomp

		case inp
		when "inspect planets"
			puts game_state.star_field.get_planet_names
		when "scan all"
			scan_all(game_state)
		when /^scan (.+)$/i
			scan_planet(game_state, $1)  #gets first capture group from ruby global
		else
			return ""
		end
	end
end

def scan_planet (game_state, planet_name)
	puts "scanning..."
	sleep 2
	planet = game_state.star_field.planets.find { |p| p.name == planet_name }
	if planet
		puts "Planet found!"
		puts planet
	else
		puts "Scanner sux"
	end
end

def scan_all(game_state)
	if game_state.player1.has_advanced_scanner? || Debug
		puts game_state.star_field.planets.join("\n")
	end
end
# what do I need from my text parser...

# verbs
# nouns
# numbers
# help
# options
# F1??
# 