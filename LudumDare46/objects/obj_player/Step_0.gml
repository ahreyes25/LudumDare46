event_inherited();
#region Death
if (life <= 0)
	player_state_transition(id, state, state_death, 0, true);
#endregion
#region Idling
if (hspd == 0 && vspd == 0 && key_none && !idling) {
	if (timer_stopped(timer_idling))
		timer_set(timer_idling, idling_time);
}
else 
	timer_stop(timer_idling);
#endregion