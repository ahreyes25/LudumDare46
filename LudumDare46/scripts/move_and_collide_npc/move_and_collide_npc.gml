/// @description	Use with an object that does not take input from the player.

_ramp_adjust();
_just_friction();
_collisions();

// MOVE
x += hspd * slow_factor;
y += vspd * slow_factor;