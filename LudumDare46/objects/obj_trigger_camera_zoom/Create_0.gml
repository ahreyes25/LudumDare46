/*
	zoom_time				= undefined;	-- time to stay focused, otherwise will focus indefinitely
	retrigger				= true;			-- can the trigger be activated again once the player leaves the activation zone?
	unzoom_on_player_exit	= true;			-- if the camera should zoom out when the player leaves the zone
	destroy					= false;		-- destroy this instance after it is activated?
*/

triggered = false;

slow_factor_base	= 1;
slow_factor			= slow_factor_base;