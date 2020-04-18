if (defined(focus_time) && x == xprevious && y == yprevious && alarm[timer_focus_time] == -1) {
	alarm[timer_focus_time] = focus_time / slow_factor;
	focus_time = undefined;
}