if (defined(lock_time_y) && y == yprevious && alarm[timer_lock_y] == -1) {
	alarm[timer_lock_y] = lock_time_y / slow_factor;
	lock_time_y = undefined;
}