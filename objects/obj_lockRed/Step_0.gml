if (place_meeting(x,y,obj_player) && keyboard_check_pressed(ord("E")) && global.keyRed){
		global.lockRed = false;
		instance_destroy(obj_lockRed);
}