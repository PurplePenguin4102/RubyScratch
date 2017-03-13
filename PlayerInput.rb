def get_player_input (game_state)
	text_parser = TextParser.new
	loop do
		print "Your move chum ::> "
		inp = text_parser.read(gets.chomp)

		case inp
		when inp.action == :INSPECT_ALL
			puts game_state.star_field.get_planet_names
		when inp.action == :SCAN_ALL
			Scanner.scan_all(game_state)
		when inp.verb == :SCAN_PLANET
			Scanner.scan_planet(game_state, inp.noun)  #gets first capture group from ruby global
		else
			return ""
		end
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