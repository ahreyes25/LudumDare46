obj_game_controller.need_to_clear_surface = true;
player.meter = undefined;
lure.rod.alarm[0] = lure.rod.throw_cooldown;
instance_destroy(lure.bubbles);
instance_destroy(lure);
surface_free(surface);
sprite_delete(sprite);