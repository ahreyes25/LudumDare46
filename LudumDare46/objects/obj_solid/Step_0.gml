#region Take Damage
if (can_break) {
	var _hitbox = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_hitbox, false, false);
	
	if (defined(_hitbox) && !hit) {
		hit		= true;
		life   -= _hitbox.damage;
	}	
	else if (!defined(_hitbox) || (defined(_hitbox) && _hitbox.can_hit))
		hit = false;
}

if (can_break && life <= 0) 
	instance_destroy();
#endregion

// Debug Visibility
if (exists(obj_debug) && object_index == obj_solid)
	visible = obj_debug.show_solids;