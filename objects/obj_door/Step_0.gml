if (place_meeting(x,y,obj_player) && keyboard_check_pressed(vk_enter)){
	room_goto(targetRoom);
	obj_player.x = targetX;
	obj_player.y = targetY;
}