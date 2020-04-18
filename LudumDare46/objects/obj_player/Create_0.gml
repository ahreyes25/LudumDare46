event_inherited();
#region General
pid					= PID.P1
name				= "player";
state				= player_state_idle;
roll_cooldown		= 30;
idling				= false;
idling_time			= room_speed * 5;	// 5 Seconds
#endregion
#region Timers
timer_idling				= 0;
timer_roll_cooldown			= 1;
timer_create(timer_idling,					_timer_player0);
timer_create(timer_roll_cooldown,			undefined);
#endregion
#region Sounds
#endregion
#region Sprites
#endregion
#region Particles
#endregion
#region States
state_death = undefined;
#endregion
#region Associations
#endregion