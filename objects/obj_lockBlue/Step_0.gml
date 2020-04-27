if (place_meeting(x,y,obj_player) && keyboard_check_pressed(ord("E")) && global.keyBlue){
		global.lockBlue = false;
		instance_destroy(obj_lockBlue);
}