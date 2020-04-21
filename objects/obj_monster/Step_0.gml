var dir = point_direction(x,y, obj_player.x, obj_player.y);

if ((distance_to_object(obj_player) < 300) && obj_player.seeable) {
	hsp = lengthdir_x(chase, dir);
}else if (changeDir == 0) {
	hsp = irandom_range(-1, 1);
}

if (changeDir == 0) {
	changeDir = 180;
}else {
	changeDir -=1;
}

monMove();

if (place_meeting(x,y, obj_player)) {
	if (attackTime == 0){
		global.playerHealth -=1;
		attackTime = 120;
	}
	else {
		attackTime -= 1;
	}
}
else if (attackTime != 120){
	attackTime = 120;
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

