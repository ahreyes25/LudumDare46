if (defined(lock_time_x) && x == xprevious && alarm[timer_lock_x] == -1) {
	alarm[timer_lock_x] = lock_time_x / slow_factor;
	lock_time_x = undefined;
}