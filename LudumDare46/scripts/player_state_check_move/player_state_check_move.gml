/// @description	player_state_check_run

if ((key_right || key_left || key_up || key_down) && can_act && !key_crouch) {
	player_state_transition(id, state, player_state_move, 0);
	return true;
}
return false;