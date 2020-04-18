if (place_meeting(x,y,obj_player) && keyboard_check_pressed(vk_enter)) {
	fadestartClock = true;
}
else if (!place_meeting(x,y,obj_player)) {
	fadestartClock = false;
	fadeTime = 2;
}

if (fadestartClock) {
	if (fadeTime > 0) {
		fadeTime -= delta_time/1000000;
	}
	else {
		fadeTime = 0;
	}
}

if (fadeTime == 0){
	if(!(targetRoom == rm_floor3)) {
		room_goto(targetRoom);
		obj_player.x = targetX;
		obj_player.y = targetY;
		fadestartClock = false;
		fadeTime = 2;
	}
	else {
		instance_deactivate_object(obj_player);
		room_goto(rm_youWin);
	}
}

if (!place_meeting(x,y,obj_player)){
	if (image_index != 0){
		image_speed = -1;
	}
	else {
	image_speed = 0;
	}
} else if (place_meeting(x,y,obj_player)){
	image_speed = 1;
	if (image_index = 3) {
			image_speed = 0;
	}
}