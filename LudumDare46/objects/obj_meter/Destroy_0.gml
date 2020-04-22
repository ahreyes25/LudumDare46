obj_game_controller.need_to_clear_surface = true;
player.meter = undefined;
lure.rod.alarm[0] = lure.rod.throw_cooldown;
instance_destroy(lure.bubbles);
instance_destroy(lure);

if (defined(surface) && surface_exists(surface))
	surface_free(surface);

if (defined(sprite) && sprite_exists(sprite))
	sprite_delete(sprite);

for (var i = 0; i < ds_list_size(sprites); i++) {
	if (sprite_exists(sprites[| i]))
		sprite_delete(sprites[| i]);	
}
ds_list_destroy(sprites);

instance_destroy(obj_banner);
audio_stop_sound(sfx_meter_start);
camera_set_focus_point(camera_x, camera_y, -1);
camera_reset_zoom_factor_soft();