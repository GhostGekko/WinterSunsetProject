if (instance_exists(obj_queen) && (timer > 0) && global.talking <= 1) {
	timer -=1;
}

if (timer <=0){
	global.talking += 1;
	timer = 300;
}