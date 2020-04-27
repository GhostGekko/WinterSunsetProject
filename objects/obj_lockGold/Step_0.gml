if (place_meeting(x,y,obj_player) && keyboard_check_pressed(ord("E")) && global.keyGold){
		global.lockGold = false;
		instance_destroy(obj_lockGold);
}