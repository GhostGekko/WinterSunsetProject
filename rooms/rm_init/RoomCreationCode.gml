/*if (file_exists("Save.dat")){
	game_load("Save.dat");
}
else{
	room_goto_next();
}*/

global.view = false;

global.pause = 0;

global.keyGreen = false;

global.lockGreen = true;

global.keyBrown = false;

global.lockBrown = true;

global.keyRed = false;

global.lockRed = true;

global.keyGold = false;

global.lockGold = true;

global.keyBlack = false;

global.lockBlack = true;

global.keyBlue = false;

global.lockBlue = true;

global.playerHealth = 5;

global.escaped = false;

global.princeFight = false;

global.crouching = false;

global.seeable = true;

room_goto_next();

//room_goto(rm_floor1);