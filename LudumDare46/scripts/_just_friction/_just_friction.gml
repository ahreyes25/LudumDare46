if (hspd > 0) {
	if (hspd >= fric)
		hspd -= fric * slow_factor;
	else
		hspd = 0;
}

if (hspd < 0) {
	if (hspd <= fric)
		hspd += fric * slow_factor;
	else
		hspd = 0;
}

if (vspd > 0) {
	if (vspd >= fric)
		vspd -= fric * slow_factor;
	else
		vspd = 0;
}

if (vspd < 0) {
	if (vspd <= fric)
		vspd += fric * slow_factor;
	else
		vspd = 0;
}