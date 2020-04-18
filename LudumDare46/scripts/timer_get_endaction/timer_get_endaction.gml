/// @script			timer_get_endaction(owner, timer_index);
/// @example		timer_get_endaction(id, 0);
/// @description	return the endaction_enum property
/// @returns		ednaction_enum

/// @param owner*		-- instance_id	-- optional		-- example:	id		-- owner of the timer
/// @param timer_index	-- integer		-- required		-- example:	0		-- index of the timer										

var _owner = argument_count == 2 ? argument[0] : id;
var _index = argument_count == 2 ? argument[1] : argument[0];

var _data = _owner.timers[? string(_index)];
return _data[TIMER_PROP.ENDACTION];