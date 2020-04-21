obj_game_controller.need_to_clear_surface = true;
player.meter = undefined;
lure.rod.alarm[0] = lure.rod.throw_cooldown;
instance_destroy(lure.bubbles);
instance_destroy(lure);
surface_free(surface);
sprite_delete(sprite);

for (var i = 0; i < ds_list_size(sprites); i++) {
	if (sprite_exists(sprites[| i]))
		sprite_delete(sprites[| i]);	
}
ds_list_destroy(sprites);
instance_destroy(obj_banner);
//sfx_play(sfx_meter_shutdown);
audio_stop_sound(sfx_meter_start);