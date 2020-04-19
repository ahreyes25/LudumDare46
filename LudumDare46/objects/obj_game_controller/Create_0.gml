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
particle_controller	= instance_create_layer(0, 0, "Controllers", obj_particle_controller);
ui_controller		= instance_create_layer(0, 0, "Controllers", obj_ui_controller);
camera				= undefined;
player				= undefined;
rod					= undefined;
lure				= undefined;
sidebar_right		= undefined;//instance_create_layer(0, 0, "Controllers", obj_sidebar_right);
sidebar_left		= undefined;//instance_create_layer(0, 0, "Controllers", obj_sidebar_left);
inventory			= undefined;//instance_create_layer(0, 0, "Controllers", obj_inventory);
shop				= undefined;//instance_create_layer(0, 0, "Controllers", obj_shop);
library				= undefined;//instance_create_layer(0, 0, "Controllers", obj_library);
merchant			= undefined;//instance_create_layer(0, 0, "Controllers", obj_merchant);
#endregion

#region Sound & Music
#endregion

room_goto_next();

need_to_clear_surface = false;
lure_surface = surface_create(room_width, room_height);
paused = false;

u_color = shader_get_uniform(shdr_solid_color, "u_color");
u_alpha = shader_get_uniform(shdr_solid_color, "u_alpha");