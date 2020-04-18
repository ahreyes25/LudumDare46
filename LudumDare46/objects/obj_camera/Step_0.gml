if (exists(focus_target))								_camera_follow_target();
if (defined(focus_point_x) && defined(focus_point_y))	_camera_focus_on_point();
if (defined(focus_time))								_camera_start_focus_timer();
if (defined(leading_x) && exists(focus_target))			_camera_apply_lead_x();
if (defined(leading_y) && exists(focus_target))			_camera_apply_lead_y();
if (defined(zoom_factor_target))						_camera_apply_zoom();
if (defined(zoom_time))									_camera_start_zoom_timer();
if (defined(screen_flash_alpha))						_camera_apply_screen_flash();
if (defined(screen_shake_size))							_camera_apply_screen_shake();
if (defined(lock_x))									_camera_apply_lock_x();
if (defined(lock_y))									_camera_apply_lock_y();
if (defined(lock_time_x))								_camera_start_lock_timer_x();
if (defined(lock_time_y))								_camera_start_lock_timer_y();
//if (restrict_to_room)									_camera_restrict_to_room();

#region Move Camera
if (dragging) {
	x += drag_x - mouse_x;
	y += drag_y - mouse_y;
}
else {
	x += (x_to - x) * move_to_factor;
	y += (y_to - y) * move_to_factor;
}
#endregion

// Update Camera
viewmat = matrix_build_lookat(x, y, z_from, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, viewmat);
projmat = matrix_build_projection_ortho(width * zoom_factor, height * zoom_factor, 1.0, 32000.0);
camera_set_proj_mat(camera, projmat);
camera_apply(camera);
view_camera[0] = camera;

#region Pan Camera
if (mouse_check_button(mb_middle))
	dragging = true;
else if (mouse_check_button_released(mb_middle)) {
	dragging = false;
	camera_reset_focus();
}

if (dragging) {
	drag_x	= mouse_x;
	drag_y	= mouse_y;
	x_to	= drag_x;
	y_to	= drag_y;
}
else {
	dragging = false;
	x_to	 = x;
	y_to	 = y;
}
#endregion
#region Zoom Camera
if (mouse_wheel_down())
	camera_set_zoom_factor(camera_get_zoom_factor() * 0.9);
if (mouse_wheel_up())
	camera_set_zoom_factor(camera_get_zoom_factor() * 1.1);
#endregion