boat_bob_iter += boat_bob_speed;

if (keyboard_check_pressed(vk_space))
	catch_reward(fish_random(lure_type));
	

if (keyboard_check_pressed(vk_enter))
	obj_inventory.show = !obj_inventory.show;