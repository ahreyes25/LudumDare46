/*
	focus_object	= undefined;	-- object to focus on when activated
	focus_time		= undefined;	-- time to stay focused, otherwise will focus indefinitely
	retrigger		= false;		-- can the trigger be activated again once the player leaves the activation zone?
	zoom			= false;		-- whether or not to zoom
	zoom_factor		= undefined;	-- factor to zoom in, if zoom is toggled
	zoom_duration	= undefined;	-- how long to stay zoomed in, if zoom is toggled
	zoom_speed		= undefined;	-- speed to zoom in, if zoom is toggled
	destroy			= false;		-- destroy this instance after it is activated?
*/

triggered = false;

slow_factor_base	= 1;
slow_factor			= slow_factor_base;