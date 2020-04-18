/// @description	Use with an object that takes input from the player.

_move_input_influence();
_just_friction();
_collisions();

// MOVE
x += hspd * slow_factor;
y += vspd * slow_factor;