/// @description	player_state_move

move_speed = walk_speed;

move_and_collide_with_input();

#region Footsteps Sound
//if (current_frame() == 2 || current_frame() == 6) {
	//if (!scr_sfx_is_playing_array(sfx_inst_footstep)) 
	//	sfx_inst_footstep = scr_sfx_play_array(sfx_emitter, sfx_footstep);
//}
//else
//	sfx_inst_footstep = undefined;
#endregion
#region Run Particles
//if (scr_current_frame() == 3 || scr_current_frame() == 7) {
//	if (!part_run_created) {
//		switch (facing) {
//			case DIR.LEFT:	var _x = x + 15;	break;
//			case DIR.RIGHT:	var _x = x - 15;	break;
//			case DIR.UP:	var _x = x + sprite_get_true_width(sprite_run_particle[0]) / 2;	break;	
//			case DIR.DOWN:	var _x = x + sprite_get_true_width(sprite_run_particle[0]) / 2;	break;
//		}		
//		
//		scr_animate_object_create(_x, y, sprite_run_particle[0], depth + 1, sign(image_xscale), sprite_run_particle[1], 0, id, 1, false, -1);
//		part_run_created = true;
//	}
//}
//else 
//	part_run_created = false;
#endregion

// State Transitions
player_state_check_idle();