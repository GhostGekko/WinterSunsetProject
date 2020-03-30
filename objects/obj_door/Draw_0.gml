draw_self();

if (place_meeting(x,y,obj_player)){
	draw_set_alpha(1);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_text(obj_door.x, obj_door.y - 200, "Hold enter to" + "\ngo to the next room");
	draw_text(obj_door.x, obj_door.y - 220, "Time: " + string(time));
}