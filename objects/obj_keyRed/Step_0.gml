if (place_meeting(x,y,obj_player) && keyboard_check_pressed(ord("E"))){
	global.keyRed = true;
	instance_destroy(obj_keyRed);
}