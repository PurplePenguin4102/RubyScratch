class TextParser
	def read(raw_text)
		case raw_text.downcase
		when "inspect planets"
			action = PlayerAction.new(
				{
					:raw_input => raw_text, 
					:action => :INSPECT_ALL, 
					:verb => :INSPECT, 
					:noun => :ALL
				})
		when "look at planets"
			action = PlayerAction.new(
				{
					:raw_input => raw_text, 
					:action => :INSPECT_ALL, 
					:verb => :INSPECT, 
					:noun => :ALL
				})
		when "scan all"
			action = PlayerAction.new(
				{
					:raw_input => raw_text, 
					:action => :SCAN_ALL, 
					:verb => :SCAN, 
					:noun => :ALL
				})
		when "scan all planets"
			action = PlayerAction.new(
				{
					:raw_input => raw_text, 
					:action => :SCAN_ALL, 
					:verb => :SCAN, 
					:noun => :ALL
				})
		when "scan planets"
			action = PlayerAction.new(
				{
					:raw_input => raw_text, 
					:action => :SCAN_ALL, 
					:verb => :SCAN, 
					:noun => :ALL
				})
		when /'^scan (.+)$'/i
			action = PlayerAction.new(
				{
					:raw_input => raw_text, 
					:action => :SCAN_PLANET, 
					:verb => :SCAN, 
					:noun => $1
				})
		else
			action = PlayerAction.new(
				{
					:raw_input => raw_text, 
					:action => :DO_NOTHING, 
					:verb => :DO, 
					:noun => :NOTHING
				})
		end
		return action
	end
end