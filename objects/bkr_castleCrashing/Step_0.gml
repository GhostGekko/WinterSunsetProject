depth = 10;

if (global.pause) {
	image_speed = 0;
	exit;
}

if (image_index > image_number-1){
	image_speed = .5;
	image_index = 21;
}