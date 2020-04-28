if (obj_player.lookRight) {
	follow = behindRight;
}
else {
	follow = behindLeft;
}

var dir = point_direction(x,y, obj_player.x + follow, obj_player.y);

if (distance_to_object(obj_player) < 300) {
	hsp = lengthdir_x(chase, dir);
	obj_player.hasQueen = true;
}

queenMove();

if (hsp > 0) {
	sprite_index = spr_queenRight;
	image_speed = 1;
}
else if (hsp < 0) {
	sprite_index = spr_queenLeft;
	image_speed = 1;
}else {
	image_speed = 0;
}