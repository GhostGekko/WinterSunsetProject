if (place_meeting(x,y,obj_player) && keyboard_check_pressed(vk_enter)) {
	startClock = true;
}
else if (!place_meeting(x,y,obj_player)) {
	startClock = false;
	time = 2;
}

if (startClock) {
	if (time > 0) {
		time -= delta_time/1000000;
	}
	else {
		time = 0;
	}
}

if (place_meeting(x,y,obj_player) && time == 0){
	room_goto(targetRoom);
	obj_player.x = targetX;
	obj_player.y = targetY;
}