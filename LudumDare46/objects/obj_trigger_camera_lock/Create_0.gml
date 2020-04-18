/*
	lock_time				= undefined;	-- time to stay focused, otherwise will focus indefinitely
	retrigger				= false;		-- can the trigger be activated again once the player leaves the activation zone?
	unlock_on_player_exit	= false;		-- if the camera should unlock when the player leaves the zone
	zoom_to_fit				= false;		-- if the camera should zoom in to fit the zone when the player enters
	destroy					= false;		-- destroy this instance after it is activated?
*/

triggered	= false;
reset		= true;

slow_factor_base	= 1;
slow_factor			= slow_factor_base;