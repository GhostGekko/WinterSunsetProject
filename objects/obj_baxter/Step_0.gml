if (!global.princeFight || global.pause) {
	image_speed = 0;
	exit;
}

if (global.playerHealth == 0) {
	instance_destroy();
}

monMove();

var dir = point_direction(x,y, obj_player.x, obj_player.y);

hsp = lengthdir_x(chase, dir);


if (place_meeting(x,y, obj_player)) {
	if (attackTime == 0){
		global.playerHealth -=1;
		if (!audio_is_playing(snd_mauricePain)){
			audio_play_sound(snd_mauricePain, 20, false);
		}
		attackTime = 120;
	}
	else {
		attackTime -= 1;
	}
}
else if (attackTime != 120){
	attackTime = 120;
}

if (attackTime == 0){
	sprite_index = spr_baxterAttack;
}else {
	sprite_index = spr_baxter;
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