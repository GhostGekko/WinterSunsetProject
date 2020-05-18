if (global.pause){
	exit;
}

if (room == rm_pathToCastle && global.talking <= 1) {
	timer -=1;
}

if (room == rm_princesChamber && global.talking <= 9) {
	timer -=1;
}

if (timer <=0){
	global.talking += 1;
	timer = 300;
}

if (global.talking == 6 && !instance_exists(obj_baxter)) {
	instance_create_layer(216,660, "Instances",obj_baxter);
}

if (global.talking == 9) {
	global.princeFight = true;
}

if (global.princeDead && global.talking == 10) {
	timer -=1;
}

if (room == rm_escaped && global.talking <= 12) {
	timer -=1;
}

if (global.talking ==13) {
	global.win = true;
	timer -=1;
}