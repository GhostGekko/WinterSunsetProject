if (place_meeting(x,y,obj_bush) && key_crouching){
	depth = 3;
	global.seeable = false;
	walksp = 3;
	global.crouching = true;
}	
else {
	depth = 0;
	global.seeable = true;
	walksp = 6;
	global.crouching = false;
}