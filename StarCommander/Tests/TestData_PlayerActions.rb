inspect_all = PlayerAction.new(
		{
			:raw_input => "",
			:action => :INSPECT_ALL,
			:verb => :INSPECT,
			:noun => :ALL
		})

scan_all = PlayerAction.new(
	{
		:raw_input => "", 
		:action => :SCAN_ALL, 
		:verb => :SCAN, 
		:noun => :ALL
	})

scan_planet = PlayerAction.new(
	{
		:raw_input => "", 
		:action => :SCAN_PLANET, 
		:verb => :SCAN, 
		:noun => "new haven"
	})

end_turn = PlayerAction.new(
	{
		:raw_input => "",
		:action => :END_TURN,
		:verb => :END,
		:noun => :TURN
	})

do_nothing = PlayerAction.new(
	{
		:raw_input => "", 
		:action => :DO_NOTHING, 
		:verb => :DO, 
		:noun => :NOTHING
	})