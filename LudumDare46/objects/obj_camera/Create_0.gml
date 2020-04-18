#region Camera Properties
// Focus
focus_target_base	= obj_player;
focus_target		= focus_target_base;
focus_point_x		= undefined;
focus_point_y		= undefined;
focus_time			= undefined;
leading_x_base		= 0;
leading_x			= leading_x_base;
leading_y_base		= 0;
leading_y			= leading_y_base;
move_to_factor_base	= 0.1;
move_to_factor		= move_to_factor_base;

// Locked
lock_x				= undefined;
lock_y				= undefined;
lock_time_x			= undefined;
lock_time_y			= undefined;

// Zoom
zoom_factor_base	= 2;
zoom_factor			= zoom_factor_base;
zoom_factor_target	= undefined;
zoom_time			= undefined;
zoom_speed_base		= 0.1;
zoom_speed			= undefined;

// Screen Shake
screen_shake_size_base	= 1;
screen_shake_size		= undefined;
screen_shake_time_base	= 10;
screen_shake_time		= undefined;

// Screen Flash
screen_flash_alpha_base	= 0.25;
screen_flash_alpha		= undefined;
screen_flash_decay_base	= 0.1;
screen_flash_decay		= undefined;
screen_flash_color_base = c_white;
screen_flash_color		= undefined;

// Other
cursor_influence_base	= true;
cursor_influence		= cursor_influence_base;
restrict_to_room_base	= true;
restrict_to_room		= restrict_to_room_base;
#endregion

// General
width_base			= 960;
width				= width_base;
height_base			= 540;
height				= height_base;
x_to				= focus_target.x;
y_to				= focus_target.y;
slow_factor_base	= 1;
slow_factor			= slow_factor_base;

// Create Camera Object
z_from	= -(room_height * 10) - 100;
camera	= camera_create();
viewmat = matrix_build_lookat(x, y, z_from, x, y, 0, 0, 1, 0);
projmat = matrix_build_projection_ortho(width * zoom_factor, height * zoom_factor, 1.0, 32000.0);
camera_set_view_mat(camera, viewmat);
camera_set_proj_mat(camera, projmat);
view_camera[0] = camera;

// Timers
timer_object_create();
timer_focus_time		= 0;
timer_screen_shake_time	= 1;
timer_zoom_time			= 2;
timer_lock_x			= 3;
timer_lock_y			= 4;
timer_cutscene_bars		= 5;
timer_create(timer_focus_time,			_timer_camera0);
timer_create(timer_screen_shake_time,	_timer_camera1);
timer_create(timer_zoom_time,			_timer_camera2);
timer_create(timer_lock_x,				_timer_camera3);
timer_create(timer_lock_y,				_timer_camera4);
timer_create(timer_cutscene_bars,		_timer_camera5);

// Other
cutscene			= false;
cutscene_bar_pos	= 0;