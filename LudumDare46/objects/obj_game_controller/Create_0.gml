randomize();

#region Data Files
global_game_data();
global_rod_data();
global_lure_data();
global_fish_data();
global_region_data();
global_movement_data();
global_player_data();
#endregion

#region Controllers
debug_controller	= instance_create_layer(0, 0, "Controllers", obj_debug);
particle_controller	= instance_create_layer(0, 0, "Controllers", obj_particle_controller);
ui_controller		= instance_create_layer(0, 0, "Controllers", obj_ui_controller);
camera				= undefined;
player				= undefined;
rod					= undefined;
lure				= undefined;
throw_stats			= instance_create_layer(0, 0, "Controllers", obj_sidebar_right);
inventory			= instance_create_layer(0, 0, "Controllers", obj_inventory);
#endregion

#region Sound & Music
#endregion

room_goto_next();

need_to_clear_surface = false;
lure_surface = surface_create(room_width, room_height);