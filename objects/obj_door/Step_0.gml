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
	room_goto(targetRoom);
	obj_player.x = targetX;
	obj_player.y = targetY;
	if (obj_player.hasQueen) {
		obj_queen.x = targetX;
		obj_queen.y = targetY;
	}
	fadestartClock = false;
	fadeTime = 2;
}

if (meetDoor) && !openOnce && !audio_is_playing(snd_doorOpen) {
	audio_play_sound(snd_doorOpen, 20, false);
	openOnce = true;
	closeOnce = false;
}else if (!meetDoor) && !closeOnce &&!audio_is_playing(snd_doorClose) {
	audio_play_sound(snd_doorClose, 20, false);
	openOnce = false;
	closeOnce = true;
}


if (!place_meeting(x,y,obj_player)){
	meetDoor = false;
	if (image_index != 0){
		image_speed = -1;
	}
	else {
		image_speed = 0;
	}
} else if (place_meeting(x,y,obj_player)){
	meetDoor = true;
	image_speed = 1;
	if (image_index = 3) {
			image_speed = 0;
	}
}