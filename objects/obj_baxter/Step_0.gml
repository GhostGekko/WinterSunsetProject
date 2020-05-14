monMove();

var dir = point_direction(x,y, obj_player.x, obj_player.y);

if (global.princeFight) {
	hsp = lengthdir_x(chase, dir);
}

if (place_meeting(x,y, obj_player)) {
	if (attackTime == 0){
		global.playerHealth -=1;
		if (!audio_is_playing(snd_mauricePain)){
			audio_play_sound(snd_mauricePain, 20, false);
		}
		attackTime = 60;
	}
	else {
		attackTime -= 1;
	}
}
else if (attackTime != 60){
	attackTime = 60;
}

if (hsp >= 1) {
	image_xscale = 1;
	image_speed = 1;
}
else if (hsp <= -1) {
	image_xscale = -1;
	image_speed = 1;
}else {
	image_xscale = 1;
	image_speed = 0;
}