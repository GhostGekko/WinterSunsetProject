if (place_meeting(x,y,obj_player) && keyboard_check_pressed(ord("E")) && global.keyGreen){
		global.lockGreen = false;
		instance_destroy(obj_lockGreen);
}