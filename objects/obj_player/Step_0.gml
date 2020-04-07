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

//jumping
if (place_meeting(x,y+1,obj_floor) && (key_jump)){
	vsp = -jumpsp;
}
else if (place_meeting(x,y+1,obj_stairs2) && (key_jump)){
	vsp = -jumpsp;
}

//Horizontal collision
if (place_meeting(x+hsp,y,obj_floor)){
	while(!place_meeting(x+sign(hsp),y,obj_floor)){
		x += sign(hsp);
	}
	hsp = 0;
} //code here is for stairs(square)
else if (place_meeting(x+hsp,y,obj_stairs2)){
while(!place_meeting(x+sign(hsp),y,obj_stairs2)){
		x += sign(hsp);
	}
	hsp = 0;
}
//code here is for stairs(triangular)
/*else if (place_meeting(x+hsp,y,obj_stairs)){
	yplus = 0;
	while (place_meeting(x+hsp,y-yplus,obj_stairs) && yplus <=abs(1*hsp))
		yplus +=1;
	if (place_meeting(x+hsp,y-yplus,obj_stairs))
	{
		while(!place_meeting(x+sign(hsp),y,obj_stairs)){
			x += sign(hsp);
		}
	}
	else
	{
		y -= yplus;
	}
	hsp = 0;
}*/
x += hsp;

//Vertical collision
if (place_meeting(x,y+vsp,obj_floor)){
	while(!place_meeting(x,y+sign(vsp),obj_floor)){
		y += sign(vsp);
	}
	vsp = 0;
} //code here is for stairs(square)
else if (place_meeting(x,y+vsp,obj_stairs2)){
	while(!place_meeting(x,y+sign(vsp),obj_stairs2)){
		y += sign(vsp);
	}
	vsp = 0;
}
//code here is for stairs(triangular)
/*else if (place_meeting(x,y+vsp,obj_stairs)){
	while(!place_meeting(x,y+sign(vsp),obj_stairs)){
		y += sign(vsp);
	}
	vsp = 0;
}*/
y += vsp;

//Change direction && walk
image_speed = 0;

if(key_left){
	sprite_index = spr_walkLeft;
	image_speed = 1;
}
else if(key_right){
	sprite_index = spr_walkRight;
	image_speed = 1;
}
else{
	image_index = 0;
}

if (key_crouching){
	crouching = !crouching;
}