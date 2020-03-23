draw_sprite(spr_door, -1, obj_door.x, obj_door.y);

if (place_meeting(x,y,obj_player)){
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	draw_text(obj_door.x, obj_door.y - 80, "Press enter to" + "\ngo to the next room");
}