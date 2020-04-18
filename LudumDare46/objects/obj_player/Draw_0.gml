event_inherited();

mask_index = spr_player_mask;

// Draw Player
//switch (state) {
//}
draw_self();
#region Reset Shader
if (shader_current() != -1)
	shader_reset();
#endregion