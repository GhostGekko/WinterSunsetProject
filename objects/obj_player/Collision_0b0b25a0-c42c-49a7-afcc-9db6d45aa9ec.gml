if (crouching && position_meeting(x,y,other)) {
	depth = 2;
	seeable = false;
	walksp = 3;
}
else if (!crouching || !position_meeting(x,y,other)){
	depth = 0;
	seeable = true;
	walksp = 6;
}