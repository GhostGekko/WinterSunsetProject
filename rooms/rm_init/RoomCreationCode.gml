/*if (file_exists("Save.dat")){
	game_load("Save.dat");
}
else{
	room_goto_next();
}*/

global.pause = 0;

global.keyGreen = false;

global.lockGreen = true;

global.keyBrown = false;

global.lockBrown = true;

global.playerHealth = 5;

room_goto_next();