switch (state) {
	case "show":
		xcurr = lerp(xcurr, xtarget, 0.2);
		
		if (abs(xcurr - xtarget) <= 1)
			state = "sell";
		break;
	
	case "hide":
		xcurr = lerp(xcurr, x_start, 0.1);
		break;
		
	case "sell":
		break;
}