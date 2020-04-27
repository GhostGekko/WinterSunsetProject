if (place_meeting(x,y,obj_player) && keyboard_check_pressed(ord("E"))){
	global.keyBlue = true;
	instance_destroy(obj_keyBlue);
}