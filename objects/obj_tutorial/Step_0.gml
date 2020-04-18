//Left
if ((keyboard_check_pressed(vk_left) or keyboard_check(ord("A"))) && (pressedLeft == false)){
		pressedLeft  = true;
	}

//Right
if ((keyboard_check_pressed(vk_right) or keyboard_check(ord("D"))) && (pressedRight == false)){
		pressedRight = true;
	}

//Space
if (keyboard_check_pressed(vk_space) && (pressedSpace == false)){
		pressedSpace = true;
	}

//Hide
with (obj_player) {
	if (keyboard_check_pressed(ord("H")) && (obj_tutorial.pressedHide == false) && place_meeting(x,y,obj_bush)){
			obj_tutorial.pressedHide = true;
	}
}

//Attacking
with (obj_player) {
	if (keyboard_check_pressed(ord("E")) && (obj_tutorial.pressedAttack == false) && place_meeting(x,y,obj_trainingDummy)){
			obj_tutorial.pressedAttack = true;
	}
}

//Collecting Items
if (pressedAttack) {
	if (tutTime > 0) {
		tutTime  -= delta_time/1000000;
	}
	else {
		tutTime = 0;
	}
}