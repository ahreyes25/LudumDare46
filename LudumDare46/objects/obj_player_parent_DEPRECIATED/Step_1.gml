// Collect Input
if (can_act)	input_get();
else			input_clear();

depth_sort();
audio_emitter_position(sfx_emitter, x, y, 0);
timer_object_beginstep();

// Update Key Anchor Points
hand_y	= y - 20;
head_y	= y - 45;
feet_y	= y;

gamepad_plugged_in = defined(pid) && gamepad_is_connected(pid);

// Dont Act If Debug Console Is Visible
can_act = !(exists(obj_console) && obj_console.console_open);