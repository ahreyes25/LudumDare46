boat_scale		= 2;
boat_bob_iter	= 0;
boat_bob_speed	= 0.1;
title_iter		= 0;
title_iter_speed = 0.01;

wave_surface	= undefined;
wave_sprite		= undefined;

var _text = obj_game_controller.new_game ? "New Game" : "Continue Game";
menu_options	= [
	_text, 
	"How To Play", 
	"Choose Difficulty", 
	"Toggle Fullscreen", 
	"Toggle Sound", 
	"Reset Save File", 
	"Exit Game"
];
menu_index		= 0;
menu_y			= 0;
erasing_save	= false;