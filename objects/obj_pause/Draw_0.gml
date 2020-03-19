if (global.pause && !(room == rm_startScreen))
{
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,room_width,room_height,0);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_set_alpha(1);
	if (!window_get_fullscreen()){
		draw_text(120, 20, "Press F1 for Fullscreen");
	}
	else{
		draw_text(110, 20, "Press F1 for Windowed");
}
	draw_text(room_width/2,room_height/2,"Game Paused");
	draw_set_color(c_black);
	
	instance_create_layer(room_width/2, room_height/2, "Pause", obj_load);
	instance_create_layer(room_width/2, room_height/2 + 120, "Pause", obj_save);
}