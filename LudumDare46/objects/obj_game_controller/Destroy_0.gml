// Controllers
instance_destroy(debug_controller);
instance_destroy(particle_controller);
instance_destroy(ui_controller);

// Particles

// Sounds
audio_emitter_free(SFX_EMITTER);
ds_list_destroy(global.audio_emitters);

// Global Data
ds_map_destroy(global.player_data[PID.P1, PP.KEY_NAMES]);
ds_map_destroy(global.player_data[PID.P1, PP.GP_NAMES]);

// Other