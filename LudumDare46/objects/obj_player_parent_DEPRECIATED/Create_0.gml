input_object();
timer_object_create();

#region General
pid					= undefined;
facing				= DIR.RIGHT;
scale				= 1;
name				= "";
life_base			= 6;
life				= life_base;
slow_factor_base	= 1;
slow_factor			= slow_factor_base;
#endregion
#region Point Tracking
hand_y				= y - 20;
head_y				= y - 45;
feet_y				= y;
#endregion
#region Flags
dead					= false;
takes_input				= true;			// player or npc?
gamepad_plugged_in		= false;
can_act					= true;			// currently has control? used for cutscenes and dialogue
#endregion
#region Associations
sfx_emitter			= audio_emitter_create_custom();
part_emitter		= part_emitter_create(PART_SYSTEM);
#endregion
#region States
state			= undefined;
previous_state	= undefined;
ran_exit_state	= false;
#endregion
#region Movement
move_stats_create();
move_stats_update();
move_speed	= walk_speed;
path		= path_add();
path_set_kind(path, 0);
path_set_closed(path, false);
#endregion
#region Sprites
facing	= DIR.RIGHT;
scale	= 1;
#endregion
