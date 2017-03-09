def get_player_input (game_state)
	#text_parser = TextParser.new
	loop do
		print "Your move chum ::> "
		inp = gets.chomp#text_parser.read(gets.chomp)

		case inp#.action
		when "inspect planets"
			puts game_state.star_field.get_planet_names
		when "scan all"
			Scanner.scan_all(game_state)
		when /^scan (.+)$/i
			Scanner.scan_planet(game_state, $1)  #gets first capture group from ruby global
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