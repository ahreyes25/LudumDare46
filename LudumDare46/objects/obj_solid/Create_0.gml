stored		= false;

// Damage
can_break	= false;
life		= undefined;
hit			= false;

slow_factor_base	= 1;
slow_factor			= slow_factor_base;

repeat(5) {
	var _sw = sprite_get_width( spr_wave_ui) * 2 + 50;
	var _sh = sprite_get_height(spr_wave_ui) * 2 + 50;
	var _x	= random_range(_sw, sprite_width  - _sw);
	var _y	= random_range(_sh, sprite_height - _sh);
	instance_create_layer(x + _x, y + _y, "Instances", obj_wave);
}