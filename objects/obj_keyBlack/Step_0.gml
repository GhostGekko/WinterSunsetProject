if (place_meeting(x,y,obj_player) && keyboard_check_pressed(ord("E"))){
	global.keyBlack = true;
	instance_destroy(obj_keyBlack);
}