if (global.playerHealth == 0) {
	instance_deactivate_object(obj_player);
	room_goto(rm_gameOver);
}

if (global.pause)
{
	image_speed = 0;
	exit;
}

//Get player inputs (ord("A")) lets u use input of other letters 
key_left = keyboard_check(vk_left) or (keyboard_check(ord("A")));
key_right = keyboard_check(vk_right) or (keyboard_check(ord("D")));

key_jump = keyboard_check_pressed(vk_space);
//key_attack = keyboard_check_pressed(ord("E"));
key_crouching = keyboard_check_pressed(ord("H"));

//Calculate movement
var _move = key_right - key_left;

hsp = _move * walksp;

vsp += grv;

//if player is touching the floor
meetsFloor = place_meeting(x,y+1,obj_floor);

//jumping
if (meetsFloor && (key_jump)){
	vsp = -jumpsp;
}

move();

if (key_right){
	lookRight = true;
}
else if (key_left) {
	lookRight = false;
}

//Change direction, walk and jump
if(meetsFloor){
	if (lookRight) {
		sprite_index = spr_walkRight;
		image_speed = 1;
	}
	else {
		sprite_index = spr_walkLeft;
		image_speed = 1;
	}
}
else if (!meetsFloor) {
	if (!lookRight){
		sprite_index = spr_jumpLeft;
	} else{
		sprite_index = spr_jump;
	}
}

if (!(key_left || key_right)){
	image_index = 0;
	image_speed = 0;
}

if (key_crouching){
	crouching = !crouching;
}

if (crouching) {
	if (!(key_left || key_right)) {
		if (lookRight) {
			sprite_index = spr_crouchRight;
		}
		else {
			sprite_index = spr_crouchLeft;
		}
	}
}