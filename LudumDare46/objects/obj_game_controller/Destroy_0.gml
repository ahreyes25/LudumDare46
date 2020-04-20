// Controllers
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

surface_free(lure_surface);

// Particles

// Sounds
audio_emitter_free(SFX_EMITTER);
audio_emitter_free(SFX_EMITTER_MUSIC);
audio_emitter_free(SFX_EMITTER_MUSIC_MUTED);
ds_list_destroy(global.audio_emitters);

// Global Data
ds_map_destroy(global.player_data[PID.P1, PP.KEY_NAMES]);
ds_map_destroy(global.player_data[PID.P1, PP.GP_NAMES]);

// Other