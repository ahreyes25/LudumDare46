audio_emitter_free(SFX_EMITTER);
audio_emitter_free(SFX_EMITTER_MUSIC);
audio_emitter_free(SFX_EMITTER_MUSIC_MUTED);

instance_destroy(particle_controller);
instance_destroy(ui_controller);
instance_destroy(camera);
instance_destroy(player);
instance_destroy(rod);
instance_destroy(lure);
instance_destroy(sidebar_right);
instance_destroy(sidebar_left);
instance_destroy(inventory);
instance_destroy(merchant);
instance_destroy(transitions);

surface_free(lure_surface);

ds_list_destroy(player_fish_caught);
ds_list_destroy(player_fish_data);
ds_list_destroy(shop_data);
ds_list_destroy(library_data);
ds_list_destroy(inventory_data);
ds_list_destroy(map_data);
ds_list_destroy(global.audio_emitters);

ds_map_destroy(global.player_data[PID.P1, PP.KEY_NAMES]);
ds_map_destroy(global.player_data[PID.P1, PP.GP_NAMES]);
ds_map_destroy(achievements);