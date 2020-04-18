event_inherited();
// Draw Player
//switch (state) {
//}
draw_self();
#region Reset Shader
if (shader_current() != -1)
	shader_reset();
#endregion