//gravity
vsp += grav;

//Horizontal collision
if (place_meeting(x+hsp,y,obj_floor)){
	while(!place_meeting(x+sign(hsp),y,obj_floor)){
		x += sign(hsp);
	}
	hsp *= -1;
}


x += hsp;

//Vertical collision
if (place_meeting(x,y+vsp,obj_floor)){
	while(!place_meeting(x,y+sign(vsp),obj_floor)){
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;